class SurveyAnalyzer
  require 'ostruct'
  attr_reader :response

  def initialize(survey)
    @survey = survey
    response = {"survey_id" => survey.id, :response_record => { "sections" =>
      [
        { "strategy" => "diet", "questions" => questions_array("diet") },
        { "strategy" => "movement", "questions" => questions_array("movement") },
        { "strategy" => "environment", "questions" => questions_array("environment") },
        { "strategy" => "rejuvenation", "questions" => questions_array("rejuvenation") },
        { "strategy" => "spirit", "questions" => questions_array("spirit") }
      ]
      }
    }
    @response = OpenStruct.new response
    response
  end

  def questions_array(strategy)
    qa = []
    @survey.survey_answers.each do |a|
      if a.strategy == strategy
        qa << {"text" => a.question.name, "question_id" => a.question.id, "substrategy" => a.substrategy, "response_value" => a.answer}
      end
    end
    qa
  end

  def run
    response.response_record["sections"].each do |section|
      logit_position = process(section)
      section["logit_position"] = logit_position
    end

    response
  end

  def process(section)
    return section["logit_position"] if section_already_scored?(section)

    questions_by_substrategy = group_questions_by_substrategy(section["questions"])

    substrategy_scores = questions_by_substrategy.map do |(substrat, questions)|
      score_for_substrategy(questions)
    end
    calculate_sum_logit(substrategy_scores)
  end

  def section_already_scored?(section)
    (section.key? "logit_position") && (section["logit_position"] != nil)
  end

  private

  def calculate_sum_logit(substrategy_scores)
    # add the two together to get the sum-logit
    # compacting in case we get a nil (temp-step fix)
    substrategy_scores.compact.reduce(&:+)
  end

  def score_for_substrategy(questions)
    responses = gather_answers(questions)

    # don't calculate if all the scores are nil:
    return nil if responses.compact.empty?
    LogitCalculator.new(responses).calculate
  end

  def group_questions_by_substrategy(questions)
    questions.group_by { |q| q["substrategy"] }
  end

  def gather_answers(questions)
    questions.map { |q| q["response_value"] }
  end
end

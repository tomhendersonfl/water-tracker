class LogitCalculator
  attr_reader :responses

  def initialize(responses)
    if responses.compact.empty?
      raise ArgumentError, "You must provide at least one non-nil score"
    end
    @responses = responses.compact.map(&:to_f)
  end

  def calculate_sucess
    user_score / total_possible_score
  end

  def calculate_strategy_strength
    (calculate_sucess * 100).to_i
  end

  def calculate
    success = calculate_sucess

    if success == 1.0
      # can't divide by zero...
      # we really just want to make
      # sure to get a big number in this case
      failure = 0.01
    else
      failure = 1.0 - success
    end

    odds = success / failure

    Math.log(odds)
  end

  private

  def user_score
    responses.reduce(&:+)
  end

  def total_possible_score
    # this is the total possible score based on what the user _answered_
    # not based on what the total possible score would be if they answered ALL questions
    # seems a bit weird and prone to bad scoring if a user only answered one or two questions
    responses.length * 5
  end
end

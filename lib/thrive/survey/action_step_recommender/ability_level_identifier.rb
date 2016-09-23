class ActionStepRecommender::AbilityLevelIdentifier
  attr_reader :strategy_name, :score

  def initialize(strategy_name, score)
    @strategy_name = strategy_name
    @score = score
    @options = SurveyOption.current
  end

  def split_by_percent
    if score >= 66
      level("advanced")
    elsif score <= 33
      level("beginner")
    else
      level("intermediate")
    end
  end

  def identify
    breakpoints = breakpoints_map[@strategy_name.to_sym]
    beginner_limit = breakpoints[0]
    intermediate_limit = breakpoints[1]

    # if no score, return beginner step
    return level("beginner") unless score.present?

    if score >= intermediate_limit
      level("advanced")
    elsif score <= beginner_limit
      level("beginner")
    else
      level("intermediate")
    end
  end

  def breakpoints_map
    {
      "diet": [@options.diet_low,@options.diet_high],
      "movement":[@options.movement_low,@options.movement_high],
      "environment":[@options.environment_low,@options.environment_high],
      "rejuvenation":[@options.rejuvenation_low,@options.rejuvenation_high],
      "spirit":[@options.spirit_low,@options.spirit_high]
    }
  end

  private
  def level(text_val)
    # uses the ActionStep Enum field to get the right integer value
    ActionStep.levels[text_val]
  end
end

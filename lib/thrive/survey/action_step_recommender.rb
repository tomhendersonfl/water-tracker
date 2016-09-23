class ActionStepRecommender

  def initialize(survey)
    @survey = survey
    @recommendations = []
    @action_steps = Filterer.new(survey.user).run
  end

  def make_recommendations
    Strategy.all.each { |strategy| recommend_for strategy }
    @recommendations
  end

  # randomly recommend 3 steps for each strategy/level from the step pool
  def recommend_for(strategy)
    strategy_steps = @action_steps.for_strategy_level(strategy,@survey.send("#{strategy.name.downcase}_level"))
    3.times do
      fresh_steps = strategy_steps.where.not(id: @recommendations.map(&:id))
      @recommendations << random_item_from(fresh_steps) unless fresh_steps.count == 0
    end
  end

  # return a random element from any enumerable object such as an activerecord relation
  def random_item_from(enumerable_object)
    array = []
    enumerable_object.each { |item| array << item }
    array[rand(0..array.length-1)]
  end
end

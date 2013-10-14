class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    self.calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert

  attr_reader :flavor

  def initialize(flavor)
    super(flavor+" jelly bean", 5)
    @flavor = flavor
  end

  def flavor= (flavor)
    @flavor = flavor
    self.name = flavor + " jelly bean"
  end

  def delicious?
    self.flavor!="licorice"
  end
end

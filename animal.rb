require './remover'
require './foods'

class Animal
  attr_reader :id
  attr_accessor :type, :number_of_legs, :name

  def initialize(type, number_of_legs, name = 'unknown')
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new
  end

  def speak
    'grrrr'
  end

  def remove_leg
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def likes_food?(food)
    @liked_food.is_liked?(food)
  end
end

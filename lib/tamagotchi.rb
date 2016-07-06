class Tamagotchi
  attr_accessor :name
  attr_accessor :food_level
  attr_accessor :sleep_level
  attr_accessor :activity_level
  attr_accessor :is_alive

  define_method(:initialize) do |name|
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @is_alive = true
    @name = name
  end
  # define_method(:is_alive) do
  #   true
  # end
end

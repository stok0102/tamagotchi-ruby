class Tamagotchi
  attr_accessor :name
  attr_accessor :food_level
  attr_accessor :sleep_level
  attr_accessor :activity_level
  attr_accessor :is_alive
  attr_accessor :is_zombie
  attr_accessor :is_model
  attr_accessor :is_obese

  define_method(:initialize) do |name|
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @is_alive = true
    @is_zombie = false
    @is_model = false
    @is_obese = false
    @name = name
  end

  define_method(:is_alive) do
    if food_level == 0
      false
    else
      true
    end
  end

  define_method(:is_zombie) do
    if sleep_level == 0
      true
    else
      false
    end
  end

  define_method(:is_model) do
    if food_level < 5 && food_level > 0 && activity_level == 0 
      true
    else
      false
    end
  end

  define_method(:is_obese) do
    if food_level > 5 && activity_level == 0
      true
    else
      false
    end
  end
end

class Tamagotchi
  attr_accessor(:name, :food_level, :sleep_level, :activity_level, :is_alive, :is_zombie, :is_model, :is_obese)

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

  define_method(:eat) do
    self.food_level += 1
  end

  define_method(:nap) do
    self.sleep_level += 1
  end

  define_method(:play) do
    self.activity_level += 1
  end

  define_method(:time_passes) do
    self.food_level -= 1
    self.sleep_level -= 1
    self.activity_level -= 1
  end

end

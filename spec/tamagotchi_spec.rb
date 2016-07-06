require('rspec')
require('tamagotchi')
require('pry')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.is_alive()).to(eq(true))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end
  end

  describe("#is_zombie") do
    it("is not a zombie if the sleep level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_zombie()).to(eq(false))
      my_pet.sleep_level = 0
      expect(my_pet.is_zombie()).to(eq(true))
    end
  end

  describe("#is_model") do
    it("is a model if the food level is between 1 and 5 and activity level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_zombie()).to(eq(false))
      my_pet.food_level = 3
      my_pet.activity_level = 0
      expect(my_pet.is_model()).to(eq(true))
    end
  end

  describe("#is_obese") do
    it("is obese if the food level is above 5 and activity level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_obese()).to(eq(false))
      my_pet.activity_level = 0
      expect(my_pet.is_obese()).to(eq(true))
    end
  end
  #
  #   it("is dead if the food level is 0") do
  #     my_pet = Tamagotchi.new("lil dragon")
  #     my_pet.set_food_level() #make a method that will change the food level of your tamagotchi.
  #     expect(my_pet.is_alive()).to(eq(false))
  #   end
  # end
  #
  # describe("#time_passes") do
  #   it("decreases the amount of food the Tamagotchi has left by 1") do
  #     my_pet = Tamagotchi.new("lil dragon")
  #     my_pet.time_passes()  #decide what trigger you will use to make time pass
  #     expect(my_pet.food_level()).to(eq(9))
  #   end
  # end
end

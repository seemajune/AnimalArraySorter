
class AnimalArraySorter
  attr_accessor :animal_list

  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]

  def initialize(animal_list)
    @animal_list = animal_list
    @animals = Array.new
    sea = Array.new
    land = Array.new
    temp_list = @animal_list
    temp_list_2 = @animal_list

    temp_list.each do |animal| 
      if SEA_ANIMALS.include?(animal)
        sea.push(animal)
      end
    end
     temp_list_2.each do |animal| 
        if LAND_ANIMALS.include?(animal)
      land.push(animal)
      end
    end
     @animals.push(sea)
     @animals.push(land)
     @animals
     print @animals
  end

  def self.sea_picker(animal_list)  #This is a class method that can be called upon by any instance of any other class.
    puts animal_list.index("octopus")
  end

end

sort_list = AnimalArraySorter.new(["marlin", "octopus", "fish", "aardvark", "cat", "elephant"])

sort_list_test = AnimalArraySorter.new(["crab", "octopus", "fish", "aardvark", "cat", "elephant"])

any_array = ["crab", "octopus", "fish", "aardvark", "cat", "elephant"]

AnimalArraySorter.sea_picker(any_array)



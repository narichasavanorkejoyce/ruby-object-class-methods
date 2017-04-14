# frozen_string_literal: true

# A class that takes a name and species
class Animal
  attr_accessor :name
  attr_reader :species

  def initialize(name, species)
    @name = name
    @species = species
  end
end

# A class that accesses data about PETS
# In Rails, the PETS array is something we'll get from the database.
# We're not able to modify stuff within the Pet class
class Pet
  PETS = [Animal.new('Zeno', 'cat'),
          Animal.new('Tommy', 'cat'),
          Animal.new('Sal', 'dog')].map(&:freeze)

  # this is defining a method
  def self.all
    PETS
  end

  def self.all_cats
    PETS.select do |pet|
      pet.species == 'cat'
    end
  end

  def self.dog_count
    PETS.select { |pet| pet.species == 'dog' }.count
  end

  # If we wanted to modify PETS and put another animal in the array
  def self.create_pet
    PETS << Animal.new('Jyo', 'cat')
  end
end

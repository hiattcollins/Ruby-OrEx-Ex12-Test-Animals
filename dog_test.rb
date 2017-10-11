require 'minitest/autorun'
require_relative 'animal'
require_relative 'dog'

class DogTest < MiniTest::Test
	def setup
		@dog = Dog.new("Fido")
	end

	def test_if_instance_of_dog
		assert_instance_of Dog, @dog
	end	

	def test_if_name_is_a_string
		@dog.name = "Rex"
		assert_equal @dog.name, "Rex"
	end

	def test_if_species_is_an_accessible_property
		assert_match @dog.species, "Dog"
	end

	def test_if_speed_is_an_accessible_property
		@dog.speed = 12
		assert_equal @dog.speed, 12
	end

	def test_walk_when_legs_greater_than_zero
		@dog.legs = 4
		current_speed = @dog.speed
		@dog.walk
		assert_equal (current_speed + (0.2 * 4)), @dog.speed
	end

	def test_if_speed_is_a_number
		@dog.speed = 11
		assert_instance_of Integer, @dog.speed
		@dog.speed = 11.123
		assert_instance_of Float, @dog.speed
	end


	def test_if_legs_is_a_number
		@dog.legs = 4
		assert_instance_of Integer, @dog.legs
		@dog.legs = 3.5
		assert_instance_of Float, @dog.legs
	end



end
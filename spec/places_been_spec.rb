require('rspec')
require('./lib/places_been')

describe(Place) do
  before() do
    Place.clear()
  end
  
  describe("#location") do
    it("lets you name a location") do
      test_task = Place.new("Portland, OR")
      expect(test_task.location()).to(eq("Portland, OR"))
    end
  end

  describe(".bucket") do
    it("It gives a bucket to put stuff in") do
      expect(Place.bucket()).to(eq([]))
    end
  end

  describe("#save") do
    it("Saves a string that we input") do
      test_place = Place.new("Portland, OR")
      test_place_2 = Place.new("Tulsa, OK")
      test_place.save()
      test_place_2.save()
      expect(Place.bucket()).to(eq([test_place, test_place_2]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved locations") do
      Place.new("Crater Lake").save()
      Place.clear()
      expect(Place.bucket()).to(eq([]))
    end
  end
end

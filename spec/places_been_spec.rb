require('rspec')
require('./lib/places_been')

describe(Place) do
  describe("#location") do
    it("lets you name a location") do
      test_task = Place.new("Portland, OR")
      expect(test_task.location()).to(eq("Portland, OR"))
    end
  end

  # describe("#save") do
  #   it("Saves a string that we input") do
  #     test_place = Place.new()
  #     expect(test_place.save()).to(eq())
  #   end
  # end
end

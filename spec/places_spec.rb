require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

   describe("#location") do
     it('lets you enter a travel destination') do
       test_places = Places.new('Hawaii')
       expect(test_places.location()).to(eq('Hawaii'))
     end
   end

   describe(".all") do
     it("is empty at first") do
       expect(Places.all()).to(eq([]))
     end
   end

   describe("#save") do
     it("adds a location to the array of saved locations") do
       test_places = Places.new("Paris")
       test_places.save()
       expect(Places.all()).to(eq([]))
     end
   end

   describe(".clear") do
     it("empties out all of the saved locations") do
       Places.new("Paris").save()
       Places.clear()
       expect(Places.all()).to(eq([]))
     end
   end
end

require "rails_helper"

RSpec.describe "competitions index page", type: :feature do
  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)
  describe "as a visitor" do
    describe "when I visit '/gerbils'" do
      it "then I see each Gerbil in the system including the Gerbil's attributes" do
        crystal = Gerbil.create!(name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)
        jasper = Gerbil.create!(name: "Jasper", color: "Polar Fox", age: 3, neutered: false)
        onyx = Gerbil.create!(name: "Onyx", color: "Black", age: 1, neutered: true)

        visit "/gerbils"
      end
    end
  end
end

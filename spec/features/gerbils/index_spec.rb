require "rails_helper"

RSpec.describe "competitions index page", type: :feature do
  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)
  describe "as a visitor" do
    describe "when I visit '/gerbils'" do
      it "then I see each Gerbil in the system including the Gerbil's attributes" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", admission_paid: true, prize_money: 250)
        south_east = Competition.create!(name: "South East Show", location: "Florida", date: "01/01/2024", admission_paid: true, prize_money: 250)
        crystal = Gerbil.create!(competition_id: new_england.id, name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)
        jasper = Gerbil.create!(competition_id: new_england.id, name: "Jasper", color: "Polar Fox", age: 3, neutered: false)
        onyx = Gerbil.create!(competition_id: south_east.id, name: "Onyx", color: "Black", age: 1, neutered: true)

        visit "/gerbils"
      end
    end
  end
end

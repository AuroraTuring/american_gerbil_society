require "rails_helper"

RSpec.describe "competitions index page" do
  # As a visitor
  # When I visit '/parents'
  # Then I see the name of each parent record in the system
  describe "as a visitor" do
    describe "when I visit '/competitions'" do
      it "then I see the name of each competitions record in the system" do
        visit "/competitions"
      end
    end
  end
end

require 'rails_helper'

describe "put animal route", :type => :request do

  it "will find the first name listing for an animal" do
    animal = FactoryGirl.create(:animal)
    expect(animal.name).to be_a(String)
  end

end

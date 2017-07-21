require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/api/v1/animals', params: { :name => 'test_animal', :age => 7, :adopted => false }
  end

  it 'returns the animals name' do
    expect(JSON.parse(response.body)['name']).to eq('test_animal')
  end

  it 'returns the animals age' do
    expect(JSON.parse(response.body)['age']).to eq(7)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

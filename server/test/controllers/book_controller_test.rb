require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  setup do
    FactoryBot.create_list(:monster_species, 5)
  end

  test '/book 200' do
    get '/book'
    assert_response :ok
  end
end

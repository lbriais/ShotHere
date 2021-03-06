require 'spec_helper'

describe Movie do

  let(:valid_attributes) { { "imdb_id" => "1130884" } }

  before(:each) do
    @movie = Movie.create! valid_attributes
  end

  describe "a Movie to_json" do
    it "contains locations" do
      JSON.parse(@movie.to_json).should include('locations')
    end
  end
end

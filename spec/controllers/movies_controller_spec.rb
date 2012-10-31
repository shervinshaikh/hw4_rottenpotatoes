require 'spec_helper'

describe MoviesController do
	before :each do
    	@fake_results = [mock('Movie'),mock('Movie')]
  	end

	describe 'find similar movies' do
		it 'should call the model method that returns movies with the same director' do
			Movie.should_receive(:find_all_by_director).with("1")
      		post :find_similar_movies, {:id => 1}
		end
	end
end
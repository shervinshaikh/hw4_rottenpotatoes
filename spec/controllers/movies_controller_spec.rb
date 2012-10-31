require 'spec_helper'

describe MoviesController do
	before :each do
    	@fake_results = [mock('Movie'),mock('Movie')]
  	end

	describe 'find similar movies' do
		it 'should grab the id of the current movie' do
			Movie.stub(:find).and_return(mock_model(:id => 1))
		end

		it 'should call the model method that returns movies with the same director' do
			Movie.stub(:same_directors).and_return(@fake_results)
      		post :same_directors, {:director => 'Steven'}
      		assigns(:movies).should == @fake_results
		end
	end

	describe 'no valid director' do
		before { fake = mock('Movie') }
		it { should_not redirect_to movies_path }
	end
end
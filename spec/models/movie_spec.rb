require 'spec_helper'

describe Movie do
	describe 'find movies with matching director' do
		#it 'should find movies whose director matches that of the current movie' do
			its(:same_directors) { should include(Movie.find_all_by_director(:director)) }
		#end
	end
end
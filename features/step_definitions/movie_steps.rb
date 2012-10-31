Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |m|
  	Movie.create!(m)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
	Movie.find_by_title(arg1) == Movie.find_by_director(arg2)
end
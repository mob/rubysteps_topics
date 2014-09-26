require 'rails_helper'
# feature = describe
# scenario = it

feature "Rubystepper comes to the site" do
  scenario "They see Welcome to Rubysteps Voting app" do
    
    visit '/'
    expect(page).to have_content("Welcome to Rubysteps")
  end

  scenario "They can log in" do
    
  end

  scenario "They see a list of topics to vote on" do
    
    
    visit "/"

    expect(page).to have_content("Lessons")
    expect(page).to have_content("Title")
  end
end


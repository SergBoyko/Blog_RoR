require 'rails_helper'

feature 'Contact Creation' do
  scenario 'allows aces to contacts page' do
    visit '/contacts'
    expect(page).to have_content 'Напишите нам!'
  end
end
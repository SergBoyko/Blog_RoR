require 'rails_helper'

feature 'Contact Creation' do
  scenario 'allows acces to contacts page' do
    visit '/contacts'
    expect(page).to have_content 'Напишите нам!'
  end
  scenario 'allows a guest to create contact' do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    click_button 'Отправить письмо'
    expect(page).to have_content 'успешно'
  end
end
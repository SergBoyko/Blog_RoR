require "rails_helper"

feature "Comment creation" do
  before(:each) do
    sigh_up
  end

  scenario 'allows user to create comments for article' do
    create_article
    fill_in :comment_body, :with =>'Test Comment'
    click_button 'Добавить'
    expect(page).to have_content 'Test Comment'
  end

end
require "rails_helper"

feature "Comment creation" do
  before(:each) do
    sigh_up
  end

  scenario 'allows user to create comments for article' do
    visit new_article_path
    fill_in :article_title, :with => 'Title'
    fill_in :article_text, :with => 'Text'
    click_button 'Опубликовать'
    fill_in :comment_body, :with =>'Test Comment'
    click_button 'Добавить'
    expect(page).to have_content 'Test Comment'

  end

end
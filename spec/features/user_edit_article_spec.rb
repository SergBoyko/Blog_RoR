require "rails_helper"

feature "User can edit article" do
  before(:each) do
    sigh_up
  end

  scenario 'allows user edit article' do
    create_article

    visit edit_article_path(1)
    fill_in :article_text, :with =>'Changed text'
    click_button 'Изменить'
    expect(page).to have_content 'Changed text'
  end

end
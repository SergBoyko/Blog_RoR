require "rails_helper"

feature "Account Creation" do
  before(:each) do
    sigh_up
  end
  scenario "allows guest to create account" do

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
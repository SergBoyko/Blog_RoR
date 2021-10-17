require 'rails_helper'

describe Comment do
  describe 'validation' do
    it { should belong_to :article }
  end
  describe 'length validation' do
    it { should validate_length_of(:body).is_at_most(4000) }
  end


end
require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }

  end
  describe 'associations' do
    it { should have_many :comments }
  end

  describe 'validations of length' do
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:text).is_at_most(4000) }

  end

  describe "#subject" do
    it 'returns the article title' do
      # создаем обьект article
      article = create(:article, title: 'Lorem Ipsum')
      # проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it 'returns the last comment' do
      # создаем статью с комментариями
      article = create(:article_with_comments)
      # проверка
      expect(article.last_comment.body).to eq 'comment body 3'
    end

  end

end
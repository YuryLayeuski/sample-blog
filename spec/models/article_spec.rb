require "rails_helper"


RSpec.describe Article, type: :model do
  describe "validations" do
    it { should validate_presence_of :title}
    it { should validate_presence_of :text}
  end

  describe "associations" do
    it { should have_many(:comments) }
  end

  describe "#subject" do 
    it "returns the article title" do
      #create object article tricky way

      article = create(:article, title: 'Lorem Ipsum')

      #assert
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      #create article, but with comments
      article = create(:article_with_comments)

      #check
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end
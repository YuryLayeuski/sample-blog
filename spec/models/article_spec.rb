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
end
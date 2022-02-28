require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'it should validate content lenght' do
      comment = Comment.new(content: 'aze')
      comment.validate
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to eq(false)
    end
  end
end

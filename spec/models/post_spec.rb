require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do
    it 'should increment comments_count' do
      post = Post.new(name: 'Salut les amis')
      post.comments << Comment.new(content: 'Demo')
      post.save

      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end

  it 'should persist a post' do
    Post.create(name: 'Salut les amis')

    expect(Post.count).to eq(2)
  end
end

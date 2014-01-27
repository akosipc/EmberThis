require_relative "../test_helper"

describe Post do
  describe 'validations' do
    subject { Post.new }
    it { must validate_presence_of(:title) }
    it { must validate_presence_of(:body) }
  end

  describe 'methods' do
    let(:post) { Post.make! }


    describe 'publish!' do
      it 'must publish this post' do
        post.publish!
        post.published.must_equal true
      end
    end
  end

end

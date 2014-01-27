class Post < ActiveRecord::Base
  validates :title, :body, presence: true

  def publish!
    update_attributes(published: true)
  end
end

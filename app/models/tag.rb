class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tags_in_posts
  has_many :posts, :through => :tags_in_posts
  validates :tag_name, presence: true

  def show_tags
  	Tag.all
  end

end
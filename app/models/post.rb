class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tags_in_posts
  has_many :tags, :through => :tags_in_posts
  validates :content, presence: true
  validates :post_name, presence: true, uniqueness: true
  validates :author, presence: true

  def specific_post(name)
  	post = Post.find_by(name)
  end

	# def new_post(name_p, content, author, name_t)
	# 	post = Post.create(post_name: name_p, content: content, author: author)
	# 	tag = Tag.create(tag_name: name_t)
	# 	post.tags << tag
	# 	post.save!
	# end

	def edit_post(name, content)
		post = Post.find_by(post_name: name)
		post.content = content
		post.save!
	end

	def delete_post(name)
		Post.find_by(post_name: name).destroy
	end

end

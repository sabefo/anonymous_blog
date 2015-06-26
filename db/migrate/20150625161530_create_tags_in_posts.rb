class CreateTagsInPosts < ActiveRecord::Migration
  def change
  	create_table :tags_in_posts do |t|
  		t.belongs_to :tag, index: true
  		t.belongs_to :post, index: true

  		t.timestamps
  	end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :post_name
  		t.string :content

  		t.timestamps
  	end
  end
end

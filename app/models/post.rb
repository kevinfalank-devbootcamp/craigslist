class Post < ActiveRecord::Base
  belongs_to :category
  def self.list_posts(category_id)
   #list posts based on category_id
    Post.where('category_id = ?', category_id)
  end

  def self.single_post(post_id)
    Post.find(post_id)
  end

 def self.create_key
   Faker::Lorem.word
 end



end

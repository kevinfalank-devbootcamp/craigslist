class Category < ActiveRecord::Base
  has_many :posts

  def self.all_categories
    Category.all.to_a
  end


end

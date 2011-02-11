class Product < ActiveRecord::Base
  attr_accessible :title, :description, :image_url
  belongs_to :user
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  default_scope :order => 'products.created_at DESC'
  validates :title, :presence => true,
                         :length => { :maximum => 100}
                         
  validates :description, :presence => true
                       
  
  
end

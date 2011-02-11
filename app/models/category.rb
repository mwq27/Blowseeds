class Category < ActiveRecord::Base
   attr_accessible :name, :active
  
   validates :name, :presence => true,
                         :length => { :maximum => 80}
end

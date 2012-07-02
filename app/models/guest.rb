class Guest < ActiveRecord::Base
   attr_accessible :name, :email, :checked
end

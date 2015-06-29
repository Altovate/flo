class Contact < ActiveRecord::Base
  has_many :listings
  has_many :lists, through: :listings
  
  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  has_and_belongs_to_many :lists
  
end

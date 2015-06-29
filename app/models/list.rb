class List < ActiveRecord::Base
  has_many :listings
  has_many :contacts, through: :listings
  
  belongs_to :owner, :class_name => 'User'
  has_and_belongs_to_many :contacts
end
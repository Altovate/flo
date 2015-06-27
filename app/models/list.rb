class List < ActiveRecord::Base
  has_many :listings
  has_many :contacts, through: :listings

end
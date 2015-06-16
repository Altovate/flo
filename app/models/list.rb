class List < ActiveRecord::Base
  has_many :listings, :dependent => :destroy
  has_many :contacts, :through => :listings

  def to_s
    name
  end
end
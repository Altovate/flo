class List < ActiveRecord::Base
  has_many :listings
  has_many :contacts, through: :listings

  belongs_to :owner, :class_name => 'User'
  has_and_belongs_to_many :contacts, before_add: :check_exist?

  private

  def check_exist?(contact)
    raise ActiveRecord::Rollback if contacts.include? contact
  end
end

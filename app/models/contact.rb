class Contact < ActiveRecord::Base
  has_many :listings
  has_many :lists, through: :listings

  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  has_and_belongs_to_many :lists, before_add: :check_exist?

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      find_each do |contact|
        csv << contact.attributes.values_at(*column_names)
      end
    end
  end

  private

  def check_exist?(list)
    raise ActiveRecord::Rollback if lists.include? list
  end
end

class Contact < ActiveRecord::Base
  has_many :listings
  has_many :lists, through: :listings

  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  has_and_belongs_to_many :lists

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      find_each do |contact|
        csv << contact.attributes.values_at(*column_names)
      end
    end
  end
end

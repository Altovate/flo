class Contact < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :user
  has_and_belongs_to_many :lists
  
  def list_list
    return self.lists.join(", ")
  end

  def list_list=(lists_string)
    self.listings.destroy_all

    list_names = lists_string.split(",").collect{|s| s.strip.downcase}.uniq

    list_names.each do |list_name|
      list = List.find_or_create_by_name(list_name)
      listing = self.listings.new
      listing.list_id = list.id
    end
  end
end

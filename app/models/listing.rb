class Listing < ActiveRecord::Base
  belongs_to :list
  belongs_to :contact
end

class Contact < ActiveRecord::Base
  
  def self.text_search(query)
    if query.present?
      where("first_name ilike :q or last_name ilike :q or title ilike :q or publication ilike :q", q: "%#{query}%")
    else
      # scoped
    end
  end
  
end

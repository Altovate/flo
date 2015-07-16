class ListContactsController < ApplicationController
  expose(:list)
  expose(:contacts, ancestor: :list)

  def index
    respond_to do |format|
      format.csv { send_data contacts.to_csv }
    end
  end
end

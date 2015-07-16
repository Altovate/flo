class ListContactsController < ApplicationController
  expose(:list)
  expose(:contacts, ancestor: :list)

  def index
    send_data contacts.to_csv
  end
end

class ListContactsController < ApplicationController
  expose(:list)
  expose(:contacts, ancestor: :list)

  def index
    respond_to do |format|
      format.csv { send_data contacts.to_csv }
    end
  end

  def add_to_list
    contacts = Contact.where(id: params[:contact_ids])
    list.contacts.push contacts
    redirect_to list, notice: "Contacts were successfully added to #{list.name} list."
  end
end

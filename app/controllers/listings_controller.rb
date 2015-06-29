class ListingsController < ApplicationController
  
  def create
    @contact = Contact.find(params[:contact_id])
    @list = List.find(params[:list_id])
    @contact.lists << @list
    if @contact.save
      redirect_to @list, notice: 'Contact added to list.'
    else
      redirect_to @contact, notice: 'Unable to add contact to list.'
    end
  end

end
class ListingsController < ApplicationController
  
  def create
    @contact = Contact.find(params[:contact_id])
    @list = List.find(params[:list_id])
    @contact.lists << @list
    if @contact.save
      redirect_to @list, notice: 'Contact added to list.'
    else
      @contact = Contact.show
      render 'new'
    end
  end

end
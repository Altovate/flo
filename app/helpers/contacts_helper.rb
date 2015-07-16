module ContactsHelper
  def list_links(lists)
    links = lists.collect{|list| link_to lists.name, lists_path(list)}
    return links.join(", ").html_safe
  end
  
  def index
    @q = Contact.ransack(params[:q])
    @contacts = @q.result(distinct: true)
  end
  
end
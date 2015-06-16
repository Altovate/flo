module ContactsHelper
  def list_links(lists)
    links = lists.collect{|list| link_to lists.name, lists_path(list)}
    return links.join(", ").html_safe
  end
end

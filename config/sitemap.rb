# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.mediadatabase.co"
SitemapGenerator::Sitemap.create_index = true
SitemapGenerator::Sitemap.create do
  
  add '/pricing'
  add '/about'
  add '/blog'
  add '/contact'
  add '/faqs'
  add '/features'
  add '/for-agencies'
  add '/for-charities'
  add '/for-freelancers'
  add '/for-startups'
  add '/help'
  add '/privacy'
  add '/terms'

  Contact.find_each do |contact|
    add contact_path(contact), :lastmod => contact.updated_at
  end
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end

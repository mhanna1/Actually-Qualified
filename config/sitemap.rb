Sitemap::Generator.instance.load :host => "Actually-Qualified.com" do

  # Sample path:
  #   path :faq
  # The specified path must exist in your routes file (usually specified through :as).

  # Sample path with params:
  #   path :faq, :params => { :format => "html", :filter => "recent" }
  # Depending on the route, the resolved url could be http://mywebsite.com/frequent-questions.html?filter=recent.

  # Sample resource:
  #   resources :articles

  # Sample resource with custom objects:
  #   resources :articles, :objects => proc { Article.published }

  # Sample resource with search options:
  #   resources :articles, :priority => 0.8, :change_frequency => "monthly"

  # Sample resource with block options:
  #   resources :activities,
  #             :skip_index => true,
  #             :updated_at => proc { |activity| activity.published_at.strftime("%Y-%m-%d") }
  #             :params => { :subdomain => proc { |activity| activity.location } }



  path :root, :priority => 1, :change_frequency => "weekly"
  path :resume, :priority => 1, :change_frequency => "weekly"
  path :mission, :priority => 1, :change_frequency => "weekly"
  path :simular, :priority => 1, :change_frequency => "weekly"
  path :languages, :priority => 1, :change_frequency => "weekly"
  path :fsd, :priority => 1, :change_frequency => "weekly"
  path :code, :priority => 1, :change_frequency => "weekly"
  path :aws, :priority => 1, :change_frequency => "weekly"
  path :about, :priority => 1, :change_frequency => "weekly"
  path :contact, :priority => 1, :change_frequency => "weekly"
  path :signup, :priority => 0.5, :change_frequency => "monthly"
  path :login, :priority => 0.5, :change_frequency => "monthly"



end

Sitemap.configure do |config|
  config.save_path = "/Users/mark/Ruby_Tests/workspace/sample_app/public"


  # To make a new sitemap fomr command line in project root directory  use
  #       rake sitemap:generate


end
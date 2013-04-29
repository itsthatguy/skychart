###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do

  # def earth
  #   image_tag "http://th00.deviantart.net/fs70/PRE/i/2011/350/a/8/skylanders_earth_icon_by_omniferious-d4j616y.png", :width => "30"
  # end

  # def fire
  #   image_tag "http://th00.deviantart.net/fs71/PRE/i/2011/350/5/8/skylanders_fire_icon_by_omniferious-d4j6178.png", :width => "30"
  # end

  # def life
  #   image_tag "http://th09.deviantart.net/fs70/PRE/i/2011/350/1/3/skylanders_life_icon_by_omniferious-d4j617i.png", :width => "30"
  # end

  # def magic
  #   image_tag "http://th02.deviantart.net/fs70/PRE/i/2011/350/a/d/skylanders_magic_icon_by_omniferious-d4j617x.png", :width => "30"
  # end

  # def tech
  #   image_tag "http://th09.deviantart.net/fs70/PRE/i/2011/350/d/6/skylanders_tech_icon_by_omniferious-d4j6186.png", :width => "30"
  # end

  # def undead
  #   image_tag "http://th03.deviantart.net/fs70/PRE/i/2011/350/e/d/skylanders_undead_icon_by_omniferious-d4j618i.png", :width => "30"
  # end

  # def water
  #   image_tag "http://th02.deviantart.net/fs70/PRE/i/2011/350/2/a/skylanders_water_icon_by_omniferious-d4j618s.png", :width => "30"
  # end

  # def wind
  #   image_tag "http://th04.deviantart.net/fs71/PRE/i/2011/350/a/4/skylanders_air_icon_by_omniferious-d4j616k.png", :width => "30"
  # end


end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
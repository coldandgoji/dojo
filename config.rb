###
# Compass
###

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

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

###
# Config
###

config[:autoload_sprockets] = false
# config[:automatic_directory_matcher = nil
# config[:build_dir] = 'build'
# config[:css_dir] = 'stylesheets'
# config[:data_dir] = 'data'
# config[:environment] = :build
# config[:fonts_dir] = 'fonts'
# config[:helpers_dir] = 'helpers'
# config[:helpers_filename_glob] = '**.rb'
# config[:http_prefix] = '/'
# config[:https] = false
config[:images_dir] = 'media/images'
# config[:index_file] = 'index.html'
# config[:js_dir] = 'javascripts'
# config[:layout] = :_auto_layout
# config[:layouts_dir] = 'layouts'
# config[:markdown_engine] = :kramdown
# config[:markdown_engine_prefix] = Tilt
config[:partials_dir] = 'partials'
# config[:port] = 4567
# config[:protect_from_csrf] = false
config[:relative_links] = true
# config[:show_exceptions] = true
# config[:source] = 'source'
# config[:ssl_certificate] = nil
# config[:ssl_private_key] = nil
# config[:strip_index_file] = true
# config[:trailing_slash] = true

###
# Extensions
###

# Global
activate :relative_assets
activate :directory_indexes
activate :automatic_image_sizes
activate :automatic_alt_tags

# ignore 'dependencies/*'

# Environment: Development
configure :development do
  activate :cache_buster
  activate :livereload
end

# Environment: Build
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_host, :host => ''
  activate :gzip
end

# activate :s3_sync

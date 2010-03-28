namespace :sunspot_autocomplete do
  desc "Copy assets to public"
  task :copy_assets do
    puts "copying javascripts/solr-autocomplete"
    FileUtils.cp_r "#{File.dirname(__FILE__)}/../assets/javascripts/solr-autocomplete", "#{Rails.root}/public/javascripts"
    puts "copying javascripts/jquery"
    FileUtils.cp "#{File.dirname(__FILE__)}/../assets/javascripts/jquery.js", "#{Rails.root}/public/javascripts"
  end

end
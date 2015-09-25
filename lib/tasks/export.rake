namespace :export do
  desc "Prints Location.all in a seeds.rb format."
  task :seeds_format => :environment do
    Location.order(:id).all.each do |location|
      puts "Location.where(#{location.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')}).first_or_create!"
    end
  end
end

namespace :slurp do
  desc "TODO"
  
  task ambiences: :environment do
    require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "ambience.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Ambience.new
  t.description = row["description"]
  t.save
  puts "#{t.description} saved"
end

puts "There are now #{Ambience.count} rows in the ambiences table"
  end
  
  task categories: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "categories.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Category.new
  t.category = row["category"]
  t.save
  puts "#{t.category} saved"
end

puts "There are now #{Category.count} rows in the categories table"
  end
  
  task internetqualities: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "internetqualities.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = InternetQuality.new
  t.quality = row["quality"]
  t.save
  puts "#{t.quality} saved"
end

puts "There are now #{InternetQuality.count} rows in the internetqualities table"
  end
  
  task neighborhoods: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "neighborhoods.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Neighborhood.new
  t.name = row["name"]
  t.save
  puts "#{t.name} saved"
end

puts "There are now #{Neighborhood.count} rows in the neighborhoods table"
  end
  
  task noiselevels: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "noiselevels.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = NoiseLevel.new
  t.level = row["level"]
  t.save
  puts "#{t.level} saved"
end

puts "There are now #{NoiseLevel.count} rows in the noiselevels table"
  end
  
  task plugavailabilities: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "plugavailabilities.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = PlugAvailability.new
  t.availability = row["availability"]
  t.save
  puts "#{t.availability} saved"
end

puts "There are now #{PlugAvailability.count} rows in the plugavailabilities table"
  end  
  
  task users: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "users.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = User.new
  t.email = row["email"]
  t.password = row["password"]
  t.save
  puts "#{t.email} saved"
end

puts "There are now #{User.count} rows in the users table"
  end
  
  task addresses: :environment do
  require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "addresses.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Address.new
  t.name = row["name"]
  t.street_number = row["street_number"]
  t.street = row["street"]
  t.city = row["city"]
  t.postal_code = row["postal_code"]
  t.state = row["state"]
  t.country = row["country"]
  t.save
  puts "#{t.name}, #{t.postal_code} saved"
end

puts "There are now #{Address.count} rows in the addresses table"

  end

  task studylocationdetails: :environment do
  require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "studylocationdetails.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = StudyLocationDetail.new
  t.ambience_id = row["ambience_id"]
  t.noise_level_id = row["noise_level_id"]
  t.internet_quality_id = row["internet_quality_id"]
  t.plug_availability_id = row["plug_availability_id"]
  t.neighborhood_id = row["neighborhood_id"]
  t.user_id = row["user_id"]
  t.address_id = row["address_id"]
  t.save
  puts "#{t.address_id}, #{t.user_id} saved"
end

puts "There are now #{StudyLocationDetail.count} rows in the studylocationdetails table"
  end

  task bookmarks: :environment do
        require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "bookmarks.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Bookmark.new
  t.study_location_detail_id = row["study_location_detail_id"]
  t.category_id = row["category_id"]
  t.save
  puts "#{t.study_location_detail_id} saved"
end

puts "There are now #{Bookmark.count} rows in the bookmarks table"
  end

end

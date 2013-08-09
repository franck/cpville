require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CSV.foreach(File.join(Rails.root, 'config/postalcodes.csv')) do |row|
  City.find_or_create_by_postalcode(row[0], name: row[1])
end

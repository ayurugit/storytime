# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/note.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  Note.create(:date => row[0], :grade => row[1], :place => row[2], :book_title => row[3], :author => row[4], :member => row[5])
end
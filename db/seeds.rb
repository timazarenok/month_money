# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

months = {
  "December" => 31,
  "Januar" => 31, 
  "Februar" => 28, 
  "March" => 31, 
  "April" => 30, 
  "May" => 31,
  "June" => 30,
  "July" => 31,
  "August" => 31,
  "September" => 30,
  "October" => 31,
  "November" => 30
}

months.each do |key, value|
  Month.create(title: key.to_s, days: value)
end

Category.create(title: "Education")
Category.create(title: "Auto")
Category.create(title: "Shooping")
Category.create(title: "Household goods")
Category.create(title: "Presents")

ProductCategory.create(title: "Vegetebales")
ProductCategory.create(title: "Meat")
ProductCategory.create(title: "Dairy")
ProductCategory.create(title: "Goodies")

Account.create(month: Month.find_by(title: Date::MONTHNAMES[Date.today.month]), year: 2021, value: 0.0)

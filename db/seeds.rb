# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!([
{
  name: "Start-Up Project",
  description: "A description of a start-up project",
  target_pledge_amount: 100.00,
  pledging_ends_on: 1.day.from_now,
  website: "http://project-a.com"
},
{
  name: "WaterBottlr",
  description: "A unique bottler of water. It is made for mass producing water bottles.",
  target_pledge_amount: 301.99,
  pledging_ends_on: 15.days.from_now,
  website: "http://thewaterbottlr.io"
},
{
  name: "TeamAker",
  description: "A tea maker designed with teams in mind. Suitable for up to 6 8oz cups",
  target_pledge_amount: 199.99,
  pledging_ends_on: 1.month.from_now,
  website: 'http://teamaker.com'
}
      ])

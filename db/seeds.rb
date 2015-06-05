# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "johnny@five.com", password: "password")
User.create(email: "johnny@six.com", password: "password")
User.create(email: "johnny@seven.com", password: "password")
User.create(email: "johnny@eight.com", password: "password")

User.all.each do |user|
  Board.create(user_id: user.id, title: "Welcome Board")
end

Board.all.each do |board|
  5.times { |i| List.create(board_id: board.id, title: "List Item #{i}")}
end

List.all.each do |list|
  5.times {|i| Card.create(list_id: list.id, body: "Card body #{i}")}
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'logger'
require 'json'

file = File.read('db/ticket.json')
ticket_hash = JSON.parse(file)

200.times do
  new_violator = Violator.create(name: Faker::Name.name,
                                 ticket_number: Faker::Number.number(digits: 10))
end

all_violators = Violator.all


all_violators.each do |c|
  ticket_hash.each do |j|
  new_ticket = c.tickets.build(ticket_number:j['ticket_number'],
                                issue_date:j['issue_date'],
                                violation:j['violation'],
                                street:j['street'],
                                lat:j['location']['latitude'],
                                long:j['location']['longitude'])
                                          new_ticket.save
  end
end

#!/usr/bin/env ruby

require 'json'
require 'mongo'

ARGF.each do |file|
  record = JSON.parse(file)
  account_id = record["account_id"]
  #attachment = record["attachement_id"]
  event = record["event"]
  id = BSON::ObjectId.from_string(record["id"])
  timestamp = id.generation_time
  date = timestamp.strftime("%m/%d/%Y")

  if event == "/flexi/appstart"
    puts "#{date}\t1"
  end
end

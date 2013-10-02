#!/usr/bin/env ruby

@previous_key = nil
@total = 0

def output previous_key, total
  puts "#{previous_key} was found #{total} times" if previous_key
end

ARGF.each do |line|
  key, value, value2 = line.split "\t", 2
  unless key == @previous_key
    output @previous_key, @total
    @previous_key = key
    @total = 0
  end
  @total += value.to_i
end

output @previous_key, @total

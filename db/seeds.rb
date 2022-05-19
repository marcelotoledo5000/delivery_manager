# frozen_string_literal: true

puts
puts '-------------------------------------------------'
puts 'Start "seeds"'
puts '-------------------------------------------------'
puts

puts '------------ creating transporters ------------'

FactoryBot.create_list(:transporter, 2)

puts
puts '-------------------------------------------------'
puts 'Finished "seeds"'
puts '-------------------------------------------------'
puts

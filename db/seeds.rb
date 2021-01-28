# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

program_list = %w[Adobe Gravit Canva Scribus SketchBook Sketch Illustrator Affinity InDesign Figma]

program_list.each do |program|
  Program.create(
    name: program
  )
end

10.times do |_tick|
  SpentTime.create(
    total_time: "#{(1..24).to_a.sample}:#{(1..60).to_a.sample}:#{(1..60).to_a.sample}"
  )
end

10.times do |_tick|
  User.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.first_name,
    patronymic: Faker::Name.last_name
  )
end

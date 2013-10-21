# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tasks = [
        {:title => "Sweep", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Mop", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Molding", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Trash", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Glass Room", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Foyer", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "MPR", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "General Supplies Room", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Men's Bathroom", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Women's Bathroom", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Windows", :progress => 0, :people => "Albert, Steven", :notes => ""},
        {:title => "Refrigerator", :progress => 0, :people => "Albert, Steven", :notes => ""},

    ]

tasks.each do |task|
    Task.create!(task)
end

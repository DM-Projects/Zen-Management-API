# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  User.create([{name: "diego", username: "diegomfg", email: "diegoamatheus@gmail.com"}, {name: "daniel", username: "dunielm", email: "danielmm661@gmail.com"}])
  Issue.create({title: "Seeded issue", description: "Seeded description", i_type: "test", label: "neglectable"})
  Project.create([{title: "first project", description: "test project"}, {title: "title", description: "description"}])

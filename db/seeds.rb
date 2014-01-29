# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  User.create(name: 'Adam', password: 'wolves', password_confirmation: 'wolves')

  ['Youth Contact', 'Junior Flag', 'Cadet Flag'].each do |name|
    Team.create(name: name)
  end


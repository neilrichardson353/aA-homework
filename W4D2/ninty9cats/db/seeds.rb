# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Cat.destroy_all
  Cat.create([
    {name: 'Heathlcliff', birth_date: '2004.03.07', color: 'orange',
    sex: 'm', description: "Homeless, streetwise cat"},
    {name: 'Katherine', birth_date: '2004.03.09', color: 'black/white',
    sex: 'f', description: "Uppeclass, indoor only- rich cat"}])

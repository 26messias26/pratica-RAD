# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


for i in 1..6 
    Person.create!(
        nome: "pedro",
        idade: 27
    ).contacts.create!(
        [
            {tipo: "telefone", valor: "83900#{i}00000"},
            {tipo: "telefone", valor: "8390#{i}006#{i}43"},
            {tipo: "telefone", valor: "8390098000#{i}"}
        ]
    )
end

for i in 1..6 
    Person.create!(
        nome: Faker::Name.name,
        idade: Faker::Number.between(from=18, to=35)
    )
end
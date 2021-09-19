# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Type.destroy_all
Booksmark.destroy_all
Assembly.destroy_all
Relation.destroy_all

Category.create(name: "Deporte", visibility: true, )
Category.create(name: "Informatica", visibility: true)
Category.create(name: "Peliculas", visibility: true)
Category.create(name: "Autos", visibility: true)
Category.create(name: "Tenis", visibility: true, parent_id: 1)
Category.create(name: "Futbol", visibility: true, parent_id: 1)
Category.create(name: "Repuestos", visibility: true, parent_id: 4)
Category.create(name: "Cine", visibility: true, parent_id: 3)

Type.create(name: "Blog")
Type.create(name: "Paper")
Type.create(name: "Articulo")
Type.create(name: "Video")
Type.create(name: "Audio")
Type.create(name: "Editorial")
Type.create(name: "Pagina ventas")
Type.create(name: "Noticia")


Booksmark.create(name: "Ronaldinho", url: "https://es.wikipedia.org/wiki/Ronaldinho")
Booksmark.create(name: "Animales_nocturnos", url: "https://es.wikipedia.org/wiki/Animales_nocturnos")
Booksmark.create(name: "Garin", url: "https://chile.as.com/chile/2021/09/18/masdeporte/1631982945_371592.html")
Booksmark.create(name: "Mazda", url: "https://www.mazda.cl/concesionarios/rm-region-metropolitana-de-santiago/santiago/venta-repuestos")

16.times do |i|
    Booksmark.create(name: "#{Faker::Name.name}", url: "https://#{Faker::Internet.domain_name}")
end

c = Category.all.ids
t = Type.all.ids

Assembly.create(booksmark_id: 1, category_id: 6)
Assembly.create(booksmark_id: 2, category_id: 8)
Assembly.create(booksmark_id: 3, category_id: 5)
Assembly.create(booksmark_id: 4, category_id: 7)
Assembly.create(booksmark_id: 5, category_id: 1)
Assembly.create(booksmark_id: 6, category_id: 2)
Assembly.create(booksmark_id: 7, category_id: 3)
Assembly.create(booksmark_id: 8, category_id: 4)
Assembly.create(booksmark_id: 9, category_id: 5)
Assembly.create(booksmark_id: 10, category_id: 6)
Assembly.create(booksmark_id: 11, category_id: 7)
Assembly.create(booksmark_id: 12, category_id: 8)
Assembly.create(booksmark_id: 13, category_id: 2)
Assembly.create(booksmark_id: 14, category_id: 4)
Assembly.create(booksmark_id: 15, category_id: 6)
Assembly.create(booksmark_id: 16, category_id: 8)
Assembly.create(booksmark_id: 17, category_id: 1)
Assembly.create(booksmark_id: 18, category_id: 3)
Assembly.create(booksmark_id: 19, category_id: 5)
Assembly.create(booksmark_id: 20, category_id: 7)

Relation.create(booksmark_id: 1, type_id: 6)
Relation.create(booksmark_id: 2, type_id: 4)
Relation.create(booksmark_id: 3, type_id: 2)
Relation.create(booksmark_id: 4, type_id: 1)
Relation.create(booksmark_id: 5, type_id: 6)
Relation.create(booksmark_id: 6, type_id: 7)
Relation.create(booksmark_id: 7, type_id: 8)
Relation.create(booksmark_id: 8, type_id: 3)
Relation.create(booksmark_id: 9, type_id: 3)
Relation.create(booksmark_id: 10, type_id: 5)
Relation.create(booksmark_id: 11, type_id: 1)
Relation.create(booksmark_id: 12, type_id: 1)
Relation.create(booksmark_id: 13, type_id: 4)
Relation.create(booksmark_id: 14, type_id: 5)
Relation.create(booksmark_id: 15, type_id: 7)
Relation.create(booksmark_id: 16, type_id: 8)
Relation.create(booksmark_id: 17, type_id: 1)
Relation.create(booksmark_id: 18, type_id: 5)
Relation.create(booksmark_id: 19, type_id: 6)
Relation.create(booksmark_id: 20, type_id: 2)

Assembly.create(booksmark_id: 1, category_id: 6)
Assembly.create(booksmark_id: 2, category_id: 8)
Assembly.create(booksmark_id: 3, category_id: 5)
Assembly.create(booksmark_id: 4, category_id: 7)
Assembly.create(booksmark_id: 5, category_id: rand(c.length))
Assembly.create(booksmark_id: 6, category_id: rand(c.length))
Assembly.create(booksmark_id: 7, category_id: rand(c.length))
Assembly.create(booksmark_id: 8, category_id: rand(c.length))
Assembly.create(booksmark_id: 9, category_id: rand(c.length))
Assembly.create(booksmark_id: 10, category_id: rand(c.length))
Assembly.create(booksmark_id: 11, category_id: rand(c.length))
Assembly.create(booksmark_id: 12, category_id: rand(c.length))
Assembly.create(booksmark_id: 13, category_id: rand(c.length))
Assembly.create(booksmark_id: 14, category_id: rand(c.length))
Assembly.create(booksmark_id: 15, category_id: rand(c.length))
Assembly.create(booksmark_id: 16, category_id: rand(c.length))
Assembly.create(booksmark_id: 17, category_id: rand(c.length))
Assembly.create(booksmark_id: 18, category_id: rand(c.length))
Assembly.create(booksmark_id: 19, category_id: rand(c.length))
Assembly.create(booksmark_id: 20, category_id: rand(c.length))
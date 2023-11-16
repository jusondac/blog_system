# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do 
    articles = Article.create(title: "Lorem ipsum dolor sit amet.", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, dolores. Veritatis aliquam corrupti asperiores reprehenderit eum dolore obcaecati quis dicta.")
    rand(5).times do
        body = Content.create(body: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium quos dolorum iure ipsam numquam laboriosam facere vero, quo illo culpa laudantium! Tenetur minima minus eius tempora eos a suscipit perspiciatis iste doloribus aperiam praesentium molestias, officiis autem ipsum facere architecto fuga distinctio! Impedit, cupiditate debitis. Tempora hic excepturi quasi aspernatur.", article_id: articles.id)
    end
end
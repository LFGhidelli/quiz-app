# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


question_one = Question.create!(
  content: "Quem foi o primeiro Imperador do Brasil?",
  correct_answer: "D. Pedro I"
)

question_one.answers.create!(
  content: "Juscelino Kubitschek"
)

question_one.answers.create!(
  content: "Dom Pedro II"
)

question_one.answers.create!(
  content: "Dom João VI"
)

question_one.answers.create!(
  content: "Dom Pedro I"
)

question_two = Question.create!(
  content: "Quem foi o primeiro presidente do Brasil?",
  correct_answer: "Marechal Deodoro da Fonseca"
)

question_two.answers.create!(
  content: "Eurico Gaspar Dutra"
)

question_two.answers.create!(
  content: "Floriano Peixoto"
)

question_two.answers.create!(
  content: "Getúlio Vargas"
)

question_two.answers.create!(
  content: "Marechal Deodoro da Fonseca"
)

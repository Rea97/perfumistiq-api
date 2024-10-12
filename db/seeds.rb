# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

perfumes = [
  { name: 'Chanel No. 5', designer_house: 'Chanel', type_of: :eau_de_parfum },
  { name: 'Dior Sauvage', designer_house: 'Dior', type_of: :eau_de_toilette },
  { name: 'Gucci Guilty', designer_house: 'Gucci', type_of: :eau_de_parfum },
  { name: 'Yves Saint Laurent Black Opium', designer_house: 'Yves Saint Laurent', type_of: :eau_de_parfum },
  { name: 'Yves Saint Laurent Y', designer_house: 'Yves Saint Laurent', type_of: :eau_de_parfum },
  { name: 'Tom Ford Black Orchid', designer_house: 'Tom Ford', type_of: :eau_de_parfum },
  { name: 'Jo Malone London Wood Sage & Sea Salt', designer_house: 'Jo Malone London', type_of: :eau_de_cologne },
  { name: 'Marc Jacobs Daisy', designer_house: 'Marc Jacobs', type_of: :eau_de_toilette },
  { name: 'Versace Bright Crystal', designer_house: 'Versace', type_of: :eau_de_toilette },
  { name: 'Calvin Klein Eternity', designer_house: 'Calvin Klein', type_of: :eau_de_parfum },
  { name: 'Burberry Brit', designer_house: 'Burberry', type_of: :eau_de_toilette }
]
perfumes.each do |perfume|
  Perfume.find_or_create_by!(perfume)
end

# rubocop:disable Rails/Output
puts 'Seeds created successfully!'
# rubocop:enable Rails/Output

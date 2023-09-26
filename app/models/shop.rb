class Shop < ApplicationRecord
  has_many :reviews
  validates :name, presence: true

  BERLIN_NEIGHBOURHOODS = %w[
    Charlottenburg
    Friedrichshain
    Hellersdorf
    Kreuzberg
    Köpenick
    Lichtenberg
    Marzahn
    Mitte
    Neukölln
    Pankow
    Reinickendorf
    Schöneberg
    Spandau
    Steglitz
    Tempelhof
    Treptow
    Wilmersburg
    Zehlendorf
  ]
end

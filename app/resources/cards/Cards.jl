module Cards

import SearchLight: AbstractModel, DbId, save!
import Base: @kwdef

export Card

@kwdef mutable struct Card <: AbstractModel
  id::DbId = DbId()
  name::String = ""
  description::String = ""
  image::String = ""
end
function seed()
  Cards = [
    ("a", "a card", "https://a"),
    ("aa", "aa card", "https://aa"),
    ("aaaa", "aaaa card", "https://aaaa"),
    ("aaaaa", "aaaaa card", "https://aaaaa"),
    ("azcdcz", "azcdcz card", "https://azcdcz"),
    ("aaaaaa", "aaaaaa card", "https://aaaaaa"),
    ("azx", "azx card", "https://azx"),
    ("aaaaaaa", "aaaaaaa card", "https://aaaaaaa"),
    ("afasadw", "afasadw card", "https://afasadw"),
    ("aaaaaaaa", "aaaaaaaa card", "https://aaaaaaaa"),
    ("aaawdazcsddwf", "aaawdazcsddwf card", "https://aaawdazcsddwf"),
    ("aaaaaaaaa", "aaaaaaaaa card", "https://aaaaaaaaa"),
    ("aaaaaaaaaa", "aaaaaaaaaa card", "https://aaaaaaaaaa"),
    ("aaaaaaaaaaa", "aaaaaaaaaaa card", "https://aaaaaaaaaaa"),
    ("aaddd", "aaddd card", "https://aaddd"),
    ("asada", "asada card", "https://asada"),
    ("aasda", "aasda card", "https://aasda"),
    ("aff", "aff card", "https://aff"),
    ("azxcsdadf", "azxcsdadf card", "https://azxcsdadf"),
  ]
  for c in Cards
    Card(name = c[1], description = c[2], image = c[3]) |> save!
  end
end
end

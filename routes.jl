using Genie.Router
using CardsController
route("/") do
  serve_static_file("welcome.html")
end
route("/hello") do
  "hello there"
end
route("/cards", CardsController.cards)
route("/api/v1/cards", CardsController.API.cards)
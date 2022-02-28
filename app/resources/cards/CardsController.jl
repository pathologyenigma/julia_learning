module CardsController
  # Build something great
  using Genie.Renderer.Html, SearchLight, Cards
  function cards()
    html(:cards, :cards, cards = all(Card))
  end

module API

using ..CardsController
using Genie.Renderer.Json, SearchLight, Cards

function cards()
  json(:cards, :cards, cards = all(Card))
end

end

end
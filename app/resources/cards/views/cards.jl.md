# the most popular $(length(cards)) cards
$(
    for_each(cards) do card
        "($(card.image))\n"
        "## $(card.name)\n"
        "* $(card.description)\n"
    end
)
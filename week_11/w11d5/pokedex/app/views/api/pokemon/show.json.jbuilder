json.pokemon do
  json.extract! @pokemon, :name, :attack, :defense, :poke_type, :move_ids, :item_ids
end

json.moves do
  @pokemon.moves.each do |move|
    json.extract! move, :name
  end
end

json.items do
  @pokemon.items.each do |item|
    json.extract! item, :name, :price, :happiness
  end
end
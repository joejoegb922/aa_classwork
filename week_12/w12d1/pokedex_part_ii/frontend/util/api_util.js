export const fetchAllPokemon = () => {
  return $.ajax({
    method: "GET",
    url: "/api/pokemon"
  })
}

export const fetchPokemon = id => (
  $.ajax({
    url: `/api/pokemon/${id}`,
    method: "GET"
  })
)

// export const fetchItems = () => (
//   $.ajax({
//     url: "api/items"
//     method: "GET"
//   })
// )
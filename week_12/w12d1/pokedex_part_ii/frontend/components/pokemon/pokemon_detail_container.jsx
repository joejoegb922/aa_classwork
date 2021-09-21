import { connect } from "react-redux"
import { requestPokemon } from "../../actions/pokemon_actions"
import PokemonDetail from "./pokemon_detail";

const mapStateToProps = (state, ownProps) => ({
    pokemon: state.entities.pokemon[ownProps.match.params.pokemonId],
    // moves: Object.values(state.entities.moves),
    // items: Object.values(state.entities.items)
})

const mapDispatchToProps = dispatch => ({
    requestPokemon: (pokemonId) => dispatch(requestPokemon(pokemonId))
})

export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail);

import { RECEIVE_ALL_POKEMON } from "../actions/pokemon_actions";

const pokemonReducer = (state = {}, action) => {
    Object.freeze(state);
    const nextState = Object.assign({}, state);

    switch(action.type) {
        case RECEIVE_ALL_POKEMON:
            let pokeState = {};
            action.pokemon.forEach((poke) => {
                pokeState[poke.id] = poke;
            })
            return pokeState;
        default:
            return state;
    }
}


export default pokemonReducer;
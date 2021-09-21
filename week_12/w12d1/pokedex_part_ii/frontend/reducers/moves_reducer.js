import { RECEIVE_POKEMON } from "../actions/pokemon_actions";

const movesReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_POKEMON:
            let nextState = Object.assign({}, state);
            nextState = action.payload.moves;
            return nextState;
        default:
            return state;
    }
}

export default movesReducer;
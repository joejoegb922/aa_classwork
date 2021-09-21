import { RECEIVE_POKEMON } from "../actions/pokemon_actions";

const itemsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_POKEMON:
            let nextState = Object.assign({}, state);
            nextState = action.payload.items;
            return nextState;
        default:
            return state;
    }
}

export default itemsReducer;
import {combineReducers} from 'redux';
import itemsReducer from './items_reducer';
import movesReducer from './moves_reducer';
import pokemonReducer from './pokemon_reducer';

const entitiesReducer = combineReducers({
  pokemon: pokemonReducer,
  moves: movesReducer,
  items: itemsReducer
})

export default entitiesReducer;
import {Route} from 'react-router-dom';
import React from 'react';
import PokemonIndexContainer from "./pokemon/pokemon_index_container";

const App = () => (
  <Route path="/" component={PokemonIndexContainer} />
  // <Route path="/pokemon/:pokemonId" component={PokemonShow}/>
)

export default App;
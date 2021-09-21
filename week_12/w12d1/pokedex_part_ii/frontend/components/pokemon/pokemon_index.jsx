import React from 'react';
// import PokemonDetailContainer from './pokemon_detail_container';
import PokemonIndexItem from './pokemon_index_item';
import PokemonDetailContainer from "./pokemon_detail_container"
import {Route} from "react-router-dom";

class PokemonIndex extends React.Component{
  constructor(props){
  super(props)
  }

  componentDidMount(){
  this.props.requestAllPokemon()
  }

  render(){
    const pokemonItems = this.props.pokemon.map(poke => (
      <PokemonIndexItem key={poke.id} pokemon={poke} />
    ));
    return (
      <div>
        <Route path="/pokemon/:pokemonId" component={PokemonDetailContainer}/>
        <section className="pokedex">
          <ul>{pokemonItems}</ul>
        </section>
      </div>
    )
  }
}

export default PokemonIndex;
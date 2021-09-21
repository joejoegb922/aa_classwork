import React from "react";
import { Link } from "react-router-dom";

class PokemonIndexItem extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { pokemon } = this.props;
    return (
      <li>
        <Link to="/pokemon/:pokemonId">
          {pokemon.name}
          <img src={pokemon.imageUrl} />
        </Link>
      </li>
    )
  }
}

export default PokemonIndexItem;
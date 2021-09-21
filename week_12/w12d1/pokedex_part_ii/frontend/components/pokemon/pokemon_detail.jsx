import React from "react"

class PokemonDetail extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount(){
        this.props.requestPokemon(this.props.match.params.pokemonId);
    }

    render() {
        // const {pokemon} = this.props.entities;
        console.log("this props: ")
        console.log(this.props)
        let details = <h2> No pokemon selected </h2>
        if (this.props.pokemon) {
            details = <h2>{pokemon.name}</h2>
        }
        return (
            <div>
                <h1>Pokemon Details</h1>
                {details}
            </div>
        )
    }
}

export default PokemonDetail;
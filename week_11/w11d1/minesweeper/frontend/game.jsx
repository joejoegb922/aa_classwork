import React from "react"
import Board from "./board"
// import {fetchAllDogs} from "./fetchdogs"
import * as Minesweeper from "./minesweeper"

class Game extends React.Component {
    constructor(props) {
        super(props)
    
        this.state = { board: new Minesweeper.Board(4, 4) }
        
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame(tile, boolean) {
        if (boolean){
            tile.toggleFlag();
        } else{
            tile.explore();
        }
        this.setState({board: this.state.board})
    }

    render(){
        return (
            <div className="board">
                <h1>minesweeper</h1>
                <Board board={this.state.board} update={this.updateGame}/>
                
                
            </div>
        )
    }
}

export default Game;
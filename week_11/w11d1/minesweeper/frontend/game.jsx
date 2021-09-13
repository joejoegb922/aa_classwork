import React from "react"
import Board from "./board"
// import {fetchAllDogs} from "./fetchdogs"
import * as Minesweeper from "./minesweeper"

class Game extends React.Component {
    constructor(props) {
        super(props)
    
        this.state = { board: Minesweeper.Board() }
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame() {

    }

    render(){
        return (
            <div className="board">
                <Board board={this.state.board} />
                
                {this.updateGame}
            </div>
        )
    }
}

export default Game;
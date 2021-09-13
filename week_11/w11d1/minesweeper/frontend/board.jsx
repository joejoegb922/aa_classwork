import React from "react"
import Tile from "./tile"
import * as Minesweeper from "./minesweeper"

class Board extends React.Component{
    constructor(props){
        super(props)

        
    }

    render(){
        console.log(`${this.props.board.grid}`)
        return (
            <div className="Board">
                {this.props.board.grid.map((row, i) =>{
                  <div className="row">
                      {row.map((el, j) =>{
                          {new Minesweeper.Tile(this.props.board, [i,j])}
                        // <Tile />
                        })}
                  </div>
                })}
            </div>
        )
    }

    renderRows() {

    }

    renderTiles(){
        
    }

}

export default Board;
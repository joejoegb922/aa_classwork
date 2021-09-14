import React from "react"
import Tile from "./tile"
import * as Minesweeper from "./minesweeper"

class Board extends React.Component{
    constructor(props){
        super(props)

        
    }

    render(){

        return(
            <div className="board">
                {this.renderRows()}
            </div>
        )
        // console.log(`${this.props.board.grid}`)
        // return (
        //     <div className="Board">
        //         {this.props.board.grid.map((row, i) =>{
        //           <div className="row">
        //               {row.map((el, j) =>{
        //                   {new Minesweeper.Tile(this.props.board, [i,j])}
        //                 // <Tile />
        //                 })}
        //           </div>
        //         })}
        //     </div>
        // )
    }

    renderRows() {
        return this.props.board.grid.map((el, indx) => {
            return(
                <div className="row">
                    {this.renderTiles(el, indx)}
                </div>
            )
            })
        
    }


    renderTiles(row, indx){
        return row.map((el, index) =>{
            return (
                <Tile tile={el} update={this.props.update}/>
            )
        })
    }

}

export default Board;
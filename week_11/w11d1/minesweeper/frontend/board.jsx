import React from "react"
import * as Minesweeper from "./minesweeper"

class Board extends React.Component{
    constructor(props){
        super(props)


    }

    render(){
        return (
            <div class="Board">
                {this.props.Board.map((el, idx) =>{
                  <div className="row">
                      {this.props.Board.row.map((el, idx) =>{
                          <Tile update={this.props.update}/>                      })}
                  </div>
                })}
                 </div>
        )
    }
}

export default Board
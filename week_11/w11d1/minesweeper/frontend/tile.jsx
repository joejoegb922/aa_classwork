import React from "react"

class Tile extends React.Component {
    constructor(props) {
        super(props)

    }

    render(){
        const tile = this.props.tile;
        const bomb = "💣";
        const flag = "🏴󠁧󠁢󠁳󠁣󠁴󠁿";
        let emoji = "";

        if (tile.explored){
            if(tile.bombed){
                emoji = bomb;
            } else {
                emoji = adjacentBombCount();
            }
        } else {
            emoji = "❤️‍🔥";
        }
        return (
        <div>{emoji}</div>
        )
        
    }
    handleClick(e){
        const flagged = e.altKey ? true : false
        this.props.update();
    }
}

export default Tile;
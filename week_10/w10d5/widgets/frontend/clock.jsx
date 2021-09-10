import React from "react";
// import Widget from "./widgets"

class Clock extends React.Component {
    constructor(props) {
        super(props);
        let currentTime = new Date();
        this.state = {time: currentTime};
    }

    render() {
        return ( 
            <div Clock="title">
                <h1>Clock</h1>
                <h2>time: {this.state.time}</h2>
            </div>
        )
    }

    componentDidMount(){
        setInterval(function(){
            tick();

        },1000)
    }

    tick(){
        let newTime = new Date();
        this.setState({time: newTime})
    }

    setInterval(){

    }
}

export default Clock;

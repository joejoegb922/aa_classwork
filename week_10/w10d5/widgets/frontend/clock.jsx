import React from "react";
// import Widget from "./widgets"

class Clock extends React.Component {
    constructor(props) {
        super(props);
        let currentTime = new Date();
        this.state = {time: currentTime};

    }

    tick(){
        let newTime = new Date();
        this.setState({time: newTime}, () => { 
            console.log(this.state.time)});
    }

    render() {
        
        return ( 
            <div className="Clock">
                <h1>Clock</h1>
                <div>{`${this.state.time}`}</div>
            </div>
        )
    }
    
    
    componentDidMount(){
        console.log("it works")
        setInterval(this.tick.bind(this), 1000);
    }

    componentWillUnmount() {

    }
}

export default Clock;

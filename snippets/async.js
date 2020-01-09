import React from 'react'

export default class Applet extends React.Component {
    constructor() {
        super()
        this.state = {
            myState: 'initial'
        }
    }

    updateState = () => {
        this.state.myState = 'updated state'
    }

    mutateState = () => {
        this.state.myState += " has been mutated"
    }

    render() {
        console.log(this.state.myState)
        this.mutateState()
        console.log(this.state.myState)
        this.updateState()
        console.log(this.state.myState)
        this.mutateState()
        console.log(this.state.myState)
        return <a />
    }
}
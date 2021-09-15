import React from "react";
import ReactDOM from "react-dom"
import configureStore from "./store/store"
import {receiveTodos} from "./actions/todo_actions"
import {receiveTodo } from "./actions/todo_actions"
import {removeTodo} from "./actions/todo_actions"


document.addEventListener("DOMContentLoaded", () => {

    ReactDOM.render(
        <h1>Todos App</h1>,
        document.getElementById('main')
    );

    console.log("Todos")
    const store = configureStore();
    window.receiveTodos = receiveTodos;
    window.receiveTodo = receiveTodo;
    window.removeTodo = removeTodo;
    window.store = store; 
    
})
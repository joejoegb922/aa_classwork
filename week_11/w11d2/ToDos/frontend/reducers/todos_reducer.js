import { object } from "prop-types";
import { RECEIVE_TODOS } from "../actions/todo_actions";
import { RECEIVE_TODO } from "../actions/todo_actions";
import { REMOVE_TODO } from "../actions/todo_actions";
const initialState = {
    1: {
        id: 1,
        title: "wash car",
        body: "with soap",
        done: false
    },
    2: {
        id: 2,
        title: "wash dog",
        body: "with shampoo",
        done: true
    }
};

const todosReducer = (state = initialState, action) => {

    const newState = Object.assign({}, state);
    switch (action.type){
        case RECEIVE_TODOS: 
            // debugger
            for (let i = 0; i < action.todos.length; i++) {
                newState[action.todos[i].id] = action.todos[i];
            }
            return newState;
        case RECEIVE_TODO:
            newState[action.todo.id] = action.todo;
            return newState;
        case REMOVE_TODO:
            delete newState[action.todo.id];
            return newState;
        default:
            return state;
    }
};

export default todosReducer;




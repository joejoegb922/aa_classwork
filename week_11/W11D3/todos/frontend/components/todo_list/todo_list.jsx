import React from "react";
import TodoListItem from "./todo_list_item";
import TodoForm from "./todo_form"

const TodoList = (props) => {
  return (
    <ul>
      {
      props.todos.map((todo, i) => <div key={i}> <TodoListItem todo={todo}/> </div>)
      }
      <div>
        <h1>Todo Form</h1>
        <TodoForm receiveTodo={props.receiveTodo}/> 
      </div>
    </ul>
  )
}

export default TodoList;
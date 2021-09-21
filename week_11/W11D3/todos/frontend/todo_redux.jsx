import React from "react";
import ReactDOM from "react-dom";
import { receiveTodos, receiveTodo, removeTodo } from "./actions/todo_actions";
import { receiveStep, receiveSteps, removeStep } from "./actions/step_actions";
import configureStore from "./store/store";
import App from "./components/app";
import Root from "./components/root";
import allTodos from "./reducers/selectors";

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById("root");

  const store = configureStore;
  ReactDOM.render(<Root store={store}/>, root);
  window.store = store;
  window.receiveTodos = receiveTodos;
  window.receiveTodo = receiveTodo;
  window.removeTodo = removeTodo;
  window.receiveSteps = receiveSteps;
  window.receiveStep = receiveStep;
  window.removeStep = removeStep;
  
  window.allTodos = allTodos;
});
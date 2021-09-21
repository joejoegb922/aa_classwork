import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { requestAllPokemon, requestPokemon } from './actions/pokemon_actions';


document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  const store = configureStore();
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.requestPokemon = requestPokemon;
  window.requestAllPokemon = requestAllPokemon;
  ReactDOM.render(<Root store={store} />, rootEl)
})
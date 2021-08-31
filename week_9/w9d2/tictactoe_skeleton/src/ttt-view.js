class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.handleClick = this.handleClick.bind(this);
    this.setupBoard();
    this.bindEvents();
  }

  setupBoard() {
    const ul = document.createElement("ul");
    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        li.dataset.position = [i, j];
        ul.append(li);
      }
    }
    this.el.append(ul);
  }

  bindEvents() {
    this.el.addEventListener("click", this.handleClick);
  }

  handleClick(e) { // e is a "synthetic event"
    const se = e.target; // e.target refers to the DOM elements that triggered the event "e"
    "LI" === se.nodeName && this.makeMove(se);
  }

  makeMove(square) {

    const pos = square.dataset.position;

      try {
      this.game.playMove(pos);
    } catch (e) {
      alert("Invalid move");
    }
    square.classList.add(currentPlayer);
  }
}


module.exports = View;

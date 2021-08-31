class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.setupBoard();
  }

  setupBoard() {
    const ul = document.createElement("ul");
    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        li.dataset.position = JSON.stringify([i, j]);
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
    if ("li" === se.nodeName && this.makeMove(se)) {
      return true;
    } else {
      return false;
    }
  }

  makeMove(square) {
    // square is the position
    const pos = JSON.parse(square.dataset.position);


    if (pos === undefined) {
      this.game.playMove(pos)
      pos.classList.add(this.game.currentPlayer)
    } else {
          alert("Invalid move")
    }

  }

}

module.exports = View;

// import Card from "react-bootstrap/Card";

import React from "react";

function Board({ game }) {
  return (
    <div>
      <ct-pgn-viewer
        move-list-folding={true}
        board-pieceStyle={"merida"}
        board-boardStyle={"green-white"}
        move-list-moveListStyle={"twocolumn"}
        // move-list-size={"100px"}
        // move-list-position={"under"}
        board-allowdrawing={true}
        board-resizable={true}
        board-size={"470px"}
      >
        {game.pgn}
      </ct-pgn-viewer>
    </div>
  );
}

export default Board;

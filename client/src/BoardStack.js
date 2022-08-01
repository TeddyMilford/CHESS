import React from "react";

import { useEffect, useState } from "react";
import Board from "./Board";

function BoardStack() {
  const [games, setGames] = useState([]);

  useEffect(() => {
    fetch("http://127.0.0.1:3000/games")
      .then((response) => response.json())
      .then((data) => setGames(data));
  });

  let deck = games.map((game) => {
    return <Board game={game} />;
  });

  return <div>{deck}</div>;
}

export default BoardStack;

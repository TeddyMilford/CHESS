# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding..."

User.create(
  first_name: "Teddy",
  last_name: "Milford",
  username: "tdawg",
  password: "pw"
)
User.create(
  first_name: "Buddy",
  last_name: "Milford",
  username: "bdawg",
  password: "pw"
)
User.create(
  first_name: "Grace",
  last_name: "Milford",
  username: "gdawg",
  password: "pw"
)

# Game.create(
#   pgn:
#     "[Event \"SuperUnited Rapid 2022\"]\n[Site \"Zagreb CRO\"]\n[Date \"2022.07.20\"]\n[Round \"2.3\"]\n[White \"Saric,Iv\"]\n[Black \"Mamedyarov,S\"]\n[Result \"1/2-1/2\"]\n[WhiteTitle \"GM\"]\n[BlackTitle \"GM\"]\n[WhiteElo \"2680\"]\n[BlackElo \"2759\"]\n[ECO \"C83\"]\n[Opening \"Ruy Lopez\"]\n[Variation \"open, classical defence\"]\n[WhiteFideId \"14508150\"]\n[BlackFideId \"13401319\"]\n[EventDate \"2022.07.20\"] 1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Nxe4 6. d4 b5 7. Bb3 d5 8. dxe5\nBe6 9. c3 Be7 10. Nbd2 Nc5 11. Bc2 d4 12. Nb3 d3 13. Bb1 Nxb3 14. axb3 Bf5 15.\nRe1 O-O 16. Be3 Qd5 17. Bd4 Rfd8 18. h4 Bg6 19. Bxd3 Bxd3 20. Qxd3 Qxb3 21. e6\nfxe6 22. Qe4 Qc4 23. Qg4 Nxd4 24. cxd4 Bf6 25. Rac1 Qd5 26. Rxc7 Qf5 27. Qg3 h5\n28. Rc6 Bxd4 29. Nxd4 Rxd4 30. Rcxe6 Rf8 31. Rg6 Rg4 32. Rxg4 hxg4 33. Qe3 Kh8\n34. Qd4 Rc8 35. Re5 Qf7 36. Qxg4 Rc1+ 37. Kh2 Rc4 38. Qg5 Kh7 39. Re7 Qf4+ 40.\nQxf4 Rxf4 41. Kg3 Ra4 42. Ra7 a5 43. Ra6 g6 44. f4 Ra2 45. b3 Kh6 46. Kf3 b4 47.\ng3 Ra3 48. Kg4 Kg7 49. h5 gxh5+ 50. Kh4 Kf7 51. Kxh5 Rxb3 52. Rxa5 Rxg3 53. Rb5\nb3 54. Kh4 Rc3 55. Kg5 Ke7 56. f5 Rg3+ 57. Kf4 Rh3 58. Ke5 Re3+ 59. Kf4 Rh3 60.\nKe5 Re3+ 61. Kf4 Rh3 1/2-1/2"
# )
# Game.create(
#   pgn:
#     "[Event \"SuperUnited Rapid 2022\"]\n[Site \"Zagreb CRO\"]\n[Date \"2022.07.20\"]\n[Round \"1.2\"]\n[White \"Firouzja,Alireza\"]\n[Black \"Saric,Iv\"]\n[Result \"1-0\"]\n[WhiteTitle \"GM\"]\n[BlackTitle \"GM\"]\n[WhiteElo \"2793\"]\n[BlackElo \"2680\"]\n[ECO \"B50\"]\n[Opening \"Sicilian\"]\n[WhiteFideId \"12573981\"]\n[BlackFideId \"14508150\"]\n[EventDate \"2022.07.20\"] 1. e4 c5 2. Nf3 d6 3. Nc3 Nf6 4. h3 e5 5. Bc4 Be7 6. d3 O-O 7. Nh2 Nc6 8. Ng4\nBe6 9. Ne3 Nd4 10. O-O Rb8 11. a4 a6 12. Ncd5 b5 13. axb5 axb5 14. Nxf6+ Bxf6\n15. Bd5 b4 16. c3 bxc3 17. bxc3 Nb3 18. Bxe6 fxe6 19. Rb1 Nxc1 20. Qxc1 Bg5 21.\nRe1 Qf6 22. Rb2 h6 23. Qc2 Bxe3 24. Rxe3 Rxb2 25. Qxb2 Qh4 26. Re1 Kh7 27. Qe2\nRf6 28. Ra1 Qf4 29. c4 Rf7 30. g3 Qf3 31. Qxf3 Rxf3 32. Ra3 Kg6 33. Kg2 Rf7 34.\nRa6 Rd7 35. Kf3 Kf6 36. Kg4 g6 37. h4 h5+ 38. Kf3 Ke7 39. g4 hxg4+ 40. Kxg4 Kf6\n41. Rb6 Rd8 42. Rb7 Ra8 43. Rd7 Ra6 44. Kf3 Rb6 45. Ke3 Ra6 46. f3 Rb6 47. Kd2\nRb2+ 48. Kc3 Rf2 49. Rxd6 Rxf3 50. Rc6 Rh3 51. Rxc5 Rxh4 52. Rc8 g5 53. Rg8 Rh1\n54. c5 Rg1 55. Kb4 Kf7 56. Rh8 Rc1 57. Kb5 Rc3 58. c6 Ke7 59. Rh7+ Kd8 60. Rd7+\nKc8 61. Rd6 g4 62. Rxe6 Rxd3 63. Rxe5 g3 64. Rg5 Re3 65. Kb6 Rb3+ 66. Kc5 Rc3+\n67. Kd5 Rd3+ 68. Kc4 Ra3 69. Rg7 Ra1 70. Rxg3 Kc7 71. Rg6 Rc1+ 72. Kd5 Rd1+ 73.\nKe5 Re1 74. Re6 Rh1 75. Kf6 Rh6+ 76. Kf7 Rh4 77. e5 Re4 78. Kf6 Rf4+ 79. Kg5 Rf1\n80. Rd6 Rf2 81. Kg6 Rf1 82. Rd2 Re1 83. Kf6 Rf1+ 84. Ke6 Rh1 85. Rc2 Rh6+ 86.\nKf7 Rh7+ 87. Kg6 Rh1 88. e6 Rg1+ 89. Kf7 Rf1+ 90. Ke8 Re1 91. e7 Rf1 92. Rh2 Rf3\n93. Rd2 Rf1 94. Rd7+ Kc8 95. c7 Rh1 96. Rd8+ Kxc7 97. Kf7 1-0"
# )

Favorite.create(user_id: 1, game_id: 1)
Favorite.create(user_id: 2, game_id: 2)
Favorite.create(user_id: 3, game_id: 2)

puts "Task Completed"

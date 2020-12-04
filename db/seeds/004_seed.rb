# week 1 - 10, week 2 - 9, week 3 - 8, 7, 6, 5, 4, 3, 2, 10
DATA7 = {
    :competition_keys =>
    ["team1_id", "team2_id", "game_id", "game_week"],
    :competitions => [
      [2, 9, 1, 1],
      [3, 8, 2, 1],
      [4, 7, 3, 1],
      [5, 6, 4, 2],

      [8, 10, 5, 2],
      [7, 2, 6, 2],
      [6, 3, 7, 2],
      [5, 4, 8, 2],

      [9, 7, 9, 3],
      [10, 6, 10, 3],
      [2, 5, 11, 3],
      [3, 4, 12, 3],

      [6, 8, 13, 4],
      [5, 9, 14, 4],
      [4, 10, 15, 4],
      [3, 2, 16, 4],

      [7, 5, 17, 5],
      [8, 4, 18, 5],
      [9, 3, 19, 5],
      [10, 2, 20, 5],

      [4, 6, 21, 6],
      [3, 7, 22, 6],
      [2, 8, 23, 6],
      [10, 9, 24, 6],

      [3, 5, 25, 7],
      [6, 2, 26, 7],
      [7, 10, 27, 7],
      [8, 9, 28, 7],

      [2, 4, 29, 8],
      [10, 5, 30, 8],
      [9, 6, 31, 8],
      [8, 7, 32, 8],

      [10, 3, 33, 9],
      [4, 9, 34, 9],
      [5, 8, 35, 9],
      [6, 7, 36, 9],

      [9, 2, 37, 10],
      [8, 3, 38, 10],
      [7, 4, 39, 10],
      [6, 5, 40, 10],

      [8, 10, 41, 11],
      [2, 7, 42, 11],
      [6, 3, 43, 11],
      [4, 5, 44, 11],

      [7, 9, 45, 12],
      [6, 10, 46, 12],
      [5, 2, 47, 12],
      [4, 3, 48, 12],

      [6, 8, 49, 13],
      [9, 5, 50, 13],
      [10, 4, 51, 13],
      [2, 3, 52, 13],

      [5, 7, 53, 14],
      [4, 8, 54, 14],
      [3, 9, 55, 14],
      [2, 10, 56, 14],

      [4, 6, 57, 15],
      [3, 7, 58, 15],
      [2, 8, 59, 15],
      [10, 9, 60, 15],

      [3, 5, 61, 16],
      [2, 6, 62, 16],
      [10, 7, 63, 16],
      [9, 8, 64, 16]
      ]}
  
      def make_games
        64.times { Game.new }
      end

      def make_competitions
        DATA7[:competitions].each do |competition|
          new_competition = Competition.new
          competition.each_with_index do |attribute, i|
            new_competition.send(DATA7[:competition_keys][i] + "=", attribute)
          end
          new_competition.save
        end
      end

      def main
        make_games
        make_competitions
      end

      main
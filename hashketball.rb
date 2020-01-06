# Write your code here!
require "pry"

def game_hash
  result = {
    home:{
    team_name:"Brooklyn Nets",
    colors:["Black", "White"],
    players:[
{player_name:"Alan Anderson",
number: 0,
shoe: 16,
points: 22,
rebounds: 12,
assists: 12,
steals: 3,
blocks: 1,
slam_dunks: 1
},

{player_name:"Reggie Evans",
number: 30,
shoe: 14,
points: 12,
rebounds: 12,
assists: 12,
steals: 12,
blocks: 12,
slam_dunks: 7
},

{player_name:"Brook Lopez",
number: 11,
shoe: 17,
points: 17,
rebounds: 19,
assists: 10,
steals: 3,
blocks: 1,
slam_dunks: 15
},

{player_name:"Mason Plumlee",
number: 1,
shoe: 19,
points: 26,
rebounds: 11,
assists: 6,
steals: 3,
blocks: 8,
slam_dunks: 5
},

{player_name: "Jason Terry",
number: 31,
shoe: 15,
points: 19,
rebounds: 2,
assists: 2,
steals: 4,
blocks: 11,
slam_dunks: 1
}
]},

    away:{
      team_name:"Charlotte Hornets",
      colors:["Turquoise", "Purple"],
      players:[
  {player_name:"Jeff Adrien",
  number: 4,
  shoe: 18,
  points: 10,
  rebounds: 1,
  assists: 1,
  steals: 2,
  blocks: 7,
  slam_dunks: 2
  },

  {player_name:"Bismack Biyombo",
  number: 0,
  shoe: 16,
  points: 12,
  rebounds: 4,
  assists: 7,
  steals: 22,
  blocks: 15,
  slam_dunks: 10
  },

  {player_name:"DeSagna Diop",
  number: 2,
  shoe: 14,
  points: 24,
  rebounds: 12,
  assists: 12,
  steals: 4,
  blocks: 5,
  slam_dunks: 5
  },

  {player_name:"Ben Gordon",
  number: 8,
  shoe: 15,
  points: 33,
  rebounds: 3,
  assists: 2,
  steals: 1,
  blocks: 1,
  slam_dunks: 0
  },

  {player_name:"Kemba Walker",
  number: 33,
  shoe: 15,
  points: 6,
  rebounds: 12,
  assists: 12,
  steals: 7,
  blocks: 5,
  slam_dunks: 12
  }]}
    }
  result
end

<<<<<<< HEAD
def all_players #helper function to compile all players from both away and home teams
  all_players_in_game = []
  game_hash[:home][:players].each do |x| all_players_in_game.push(x) end
  game_hash[:away][:players].each  do |x| all_players_in_game.push(x) end
  all_players_in_game
end


def find_players_hash(player) #helper function to find the hash of a player
=======
def all_players
  all_players_in_game = []
  all_players_in_game.push(game_hash[:home][:players])
  all_players_in_game.push(game_hash[:away][:players])
  all_players_in_game
end

binding.pry

def find_players_hash(player)
>>>>>>> 42bbb73eb72a206c65b76efb40bea8e00d73f54d
  result = {}
  all_players.each do |x|
    if x[:player_name] == player
      return result = x
<<<<<<< HEAD
    end
=======
>>>>>>> 42bbb73eb72a206c65b76efb40bea8e00d73f54d
  end
  result
end

<<<<<<< HEAD
def num_points_scored(player)
  find_players_hash(player)[:points]
end

def shoe_size(player)
  find_players_hash(player)[:shoe]
end


def team_colors(team)
  teams = {game_hash[:home][:team_name] => game_hash[:home][:colors], game_hash[:away][:team_name] => game_hash[:away][:colors]}
  teams[team]
end

def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end


def player_numbers(team)
  result = []
  if team == game_hash[:home][:team_name]
    game_hash[:home][:players].each do |x| result.push(x[:number]) end
  elsif team == game_hash[:away][:team_name]
    game_hash[:away][:players].each do |x| result.push(x[:number]) end
  end
    result
end

def player_stats(player)
  result = find_players_hash(player)
  result.delete(:player_name)
  result
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  player = ""
  all_players.each do |x|
    if x[:shoe] > biggest_shoe_size
      biggest_shoe_size = x[:shoe]
      player = x[:player_name]
    end
  end
    find_players_hash(player)[:rebounds]
  end

  def most_points_scored
    most_points = 0
    player = ""
    all_players.each do |x|
      if x[:points] > most_points
        most_points = x[:points]
        player = x[:player_name]
      end
    end
      player
    end

def winning_team
  home = 0
  away = 0
  game_hash[:home][:players].each {|x| home += x[:points]}
  game_hash[:away][:players].each {|x| away += x[:points]}
  if home > away
    return game_hash[:home][:team_name]
  elsif home < away
    return game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  longest = 0
  player = ""
  all_players.each do |x|
    if x[:player_name].length > longest
      longest = x[:player_name].length
      player = x[:player_name]
    end
  end
    player
  end

  def player_with_most_steals # helper function to find player with most steals
    most_steals = 0
    player = ""
    all_players.each do |x|
      if x[:steals] > most_steals
        most_steals = x[:steals]
        player = x[:player_name]
      end
    end
      player
    end

def long_name_steals_a_ton?
  player_with_longest_name == player_with_most_steals
end
=======
binding.pry

def num_points_scored(player)
  binding.pry
  stats = find_players_hash(player)
  stats[:points]
end

binding.pry
>>>>>>> 42bbb73eb72a206c65b76efb40bea8e00d73f54d

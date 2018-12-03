class Match < ApplicationRecord
  def player_1
    User.find(user_1)
  end

  def player_2
    User.find(user_2)
  end
end

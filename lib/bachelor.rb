require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
    #binding.pry
    if info["status"] == "Winner"
      return info["name"].lines(' ')[0].rstrip
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant_info|
    #binding.pry
    contestant_info.each do |hash|
      #binding.pry
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestant_info|
    contestant_info.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_info|
    contestant_info.each do |hash|
      #binding.pry
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  counter = 0
  data[season].each do |info|
      #binding.pry
      total_age += info["age"].to_i
      counter += 1
  end
    #binding.pry
  total_age.fdiv(counter).round
end

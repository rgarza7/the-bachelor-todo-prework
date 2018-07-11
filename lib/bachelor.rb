

def get_first_name_of_season_winner(data, season)
  data[season].each do |key, value|
    if key ["status"] == "Winner"
      return key["name"].split.first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |contestant, contestant_hash|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |contestant, contestant_hash|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |contestant, contestant_hash|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  counter = 0
  data[season].each do |contestant|
    total += contestant["age"].to_f
    counter += 1
  end
  (total/counter).round
end

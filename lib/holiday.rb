require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  #holiday_hash[:winter][:christmas] << supply
  #holiday_hash[:winter][:new_years] << supply
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, to_buy|
        to_buy << supply
      end
    end
  end

end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #holiday_hash.each do |season, holiday|
   # if holiday == :memorial_day
holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

  
  holiday_hash.map do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
  holiday.map do |fest, to_buy|
    puts "  #{fest.to_s.split("_").map(&:capitalize!).join(" ")}: #{to_buy.join(", ")}"

end
end
end


  
#end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
x = []
holiday_hash.each do |season, holiday|
  holiday.each do |fest, to_buy|
    if to_buy.include?("BBQ")
      x << fest
end
end
end
return x
end








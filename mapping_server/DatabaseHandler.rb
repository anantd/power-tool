require 'sqlite3'
require 'json'
require 'forecast_io'

class DatabaseHandler

def initialize(path_to_db)
   @db = SQLite3::Database.new(path_to_db)
   @db.results_as_hash = true
   puts "databse init"
end

def get_info(plant_id)

   result = @db.execute("SELECT plant_id,`Plant nameplate capacity (MW)`," +
               "`Plant latitude`, `Plant longitude`, `Plant primary fuel` FROM data WHERE plant_id = #{plant_id}")

   result = result[0]
   capacity = result["Plant nameplate capacity (MW)"]
   lat = result["Plant latitude"]
   long = result["Plant longitude"]
   primary_fuel = result["Plant primary fuel"]

   puts "the capacity of plant #{plant_id} is #{capacity} MW"
   puts "lat: #{lat}, long: #{long}, primary fuel: #{primary_fuel}"

   res = Hash.new
   res["capacity"] = capacity
   res["lat"] = lat
   res["long"] = long
   res["primary_fuel"] = primary_fuel

   weather = get_current_weather(lat,long)
   res["weather"] = weather

   res = JSON.generate(res)

   return res

end

def get_current_weather(lat,long)

   ForecastIO.configure do |configuration|
      configuration.api_key = "cf3481552d9c47c3dec659c2a91a5b06"
   end

   forecast = ForecastIO.forecast(lat, long, time:Time.new.to_i)

   f = JSON.generate(forecast.currently)

   return f

end

end

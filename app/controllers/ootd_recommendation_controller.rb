class OotdRecommendationController < ApplicationController

    # When you get to the page it'll recommend you an OOTD
    def recommend
        # puts("HELLO INSIDE RECOMMEND")
        require 'net/http'

        # Ann Arbor city_id: 4984247
        # Antarctica city_id: 6255152
        city_id = 4984247
        # my APIKey: 72492ca8a2f9c1a7d74e55d25ec1b0aa
        request = "http://api.openweathermap.org/data/2.5/weather?id=#{city_id}&appid=7226ca3750105d940d7f1afb2dfafcee"

        @response = Net::HTTP.get(URI.parse(request))

        # Kelvin to F 
        @feels_like_in_K = JSON.parse(@response)["main"]["feels_like"]
        @feels_like_in_F = ((@feels_like_in_K - 273.15) * 9/5 + 32).floor

        puts(@feels_like_in_K)
        puts(@feels_like_in_F)

        # Get brief text description of weathers
        @description = JSON.parse(@response)["weather"][0]["description"]
        @main = JSON.parse(@response)["weather"][0]["main"]

        puts(@description)
        puts(@main)
    
        # temperature threshold here
        if (@feels_like_in_F < 32) 
            # below 32 F is very cold
            @suggestion = ActionController::Base.helpers.asset_path("verycold.jpg")   
            @clothing = "Suggetions: A heavy winter parka and jeans.";
        else 
            # above 32 F is moderately cold 
            @suggestion = ActionController::Base.helpers.asset_path("moderatelycold.jpg")
            @clothing = "Suggestions: A light coat, scarf, and leggings.";
        end

    end
end

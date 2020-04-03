class OotdRecommendationController < ApplicationController

    # When you get to the page it'll recommend you an OOTD
    def recommend
        puts("HELLO INSIDE RECOMMEND")
        require 'net/http'

        # Ann Arbor city_id, hardcoded for MVP presentation
        city_id = 4984247
        # my APIKey: 72492ca8a2f9c1a7d74e55d25ec1b0aa
        request = "http://api.openweathermap.org/data/2.5/weather?id=#{city_id}&appid=7226ca3750105d940d7f1afb2dfafcee"

        @response = Net::HTTP.get(URI.parse(request))

        # todo! rest of this once API Key is activated.
        # @project_name = JSON.parse(@response)["name"]

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

        # handle errors (4xx & 5xx)
        # if @response.status.client_error? || @response.status.server_error?
        # flash[:info] = "We are currently verifying and setting up your account. Videos and statistics will be available after we verify you!"
        # redirect_to root_path
        # return
        # end

        # @response = HTTP.get(request).body # didnt get body to handle errors
    end
end

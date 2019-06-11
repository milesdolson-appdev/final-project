class UserfeedController < ApplicationController
    def user_feed
        @user_id = params.fetch("user_id")
        @email = User.where({:id => @user_id}).pluck(:email).at(0)
        @recent_spots = StudyLocationDetail.where({ :user_id => @user_id}).order({ :created_at => :desc }).limit(20)
        @recentnames = Address.where({ :id => @recent_spots.id}).pluck(:name)
        @recentambiences = Ambience.where({ :id => @recent_spots.ambience_id}).pluck(:description)
        @recentnoiselevels = NoiseLevel.where({ :id => @recent_spots.noise_level_id}).pluck(:level)
        @recentinternetqualities = InternetQuality.where({ :id => @recent_spots.internet_quality_id}).pluck(:quality)
        @recentplugavailabilities = PlugAvailability.where({ :id => @recent_spots.plug_availability_id}).pluck(:availability)
        @recentneighborhoods = Neighborhood.where({ :id => @recent_spots.neighborhood_id}).pluck(:name)
        render("location_templates/userfeed.html.erb")
    end
end
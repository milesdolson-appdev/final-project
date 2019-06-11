class LocationsController < ApplicationController
    #   skip_before_action(:authenticate_user!, { :only => :recent })
      
      def recent
        #   @user_id = params.fetch("user_id")
          @recent = StudyLocationDetail.all.order({ :created_at => :desc }).limit(20)
          @recentid = @recent.pluck(:id)
          @recentnames = Address.where({ :id => @recentid}).pluck(:name)
          @recentambienceid = @recent.pluck(:ambience_id)
          @recentambiences = Ambience.where({ :id => @recentambienceid}).pluck(:description)
          @recentnoiselevelid = @recent.pluck(:noise_level_id)
          @recentnoiselevels = NoiseLevel.where({ :id => @recentnoiselevelid}).pluck(:level)
          @recentinternetqualityid = @recent.pluck(:internet_quality_id)
          @recentinternetqualities = InternetQuality.where({ :id => @recentinternetqualityid}).pluck(:quality)
          @recentplugavailabilityid = @recent.pluck(:plug_availability_id)
          @recentplugavailabilities = PlugAvailability.where({ :id => @recentplugavailabilityid}).pluck(:availability)
          @recentneighborhoodid = @recent.pluck(:neighborhood_id)
          @recentneighborhoods = Neighborhood.where({ :id => @recentneighborhoodid}).pluck(:name)
      render("location_templates/recent_list.html.erb")
    end
end
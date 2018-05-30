class HomeController < ApplicationController
  def index
  	movies_results = JSON.parse(Tmdb::Movie.now_playing.to_json)
  	@movies = movies_results.present? ? movies_results["table"]["results"] : []
  	# return render :body => @movies.inspect
  	generes = HTTparty.get("https://api.themoviedb.org/3/genre/movie/list?api_key=321f0d55186803c7ea63efc6b882b220&language=en-US")
  	return render :body => generes.inspect
  	if params[:sort]
  		case params[:sort]
	  		when 'title'
	  			@movies = @movies.sort_by{|m| m["table"]["title"]}
				when 'date'
				when 'genre'
			end
		end
  end
end

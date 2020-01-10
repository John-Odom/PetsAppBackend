class DogsController < ApplicationController
    def index
        dogs=Dog.all
        render json: dogs
    end
    def show
        dog=Dog.find(params[:id])
        render json: dog
    end
    # def create
	# 	@movie = Movie.find_or_create_by!(
	# 		title: movie_params['title'], search_id: movie_params['search_id'],
	# 		 poster: movie_params['poster'], genre: movie_params['genre']
	# 		)
	# 	if @movie.save
	# 		currentUser = User.find(movie_params[:user_id])
	# 		if currentUser.movies.any?{|movie| movie['title'] === @movie['title']}
	# 			render json: @movie, status: :ok
	# 		else 
	# 			@movie.users << currentUser
	# 			render json: @movie, status: :created
	# 		end
	# 	else
	# 		render json: @movie.errors.full_messages, status: :unprocessable_entity
	# 	end
    # end
    def create
        image1, image2, image3, image4 = nil
        params['dog']["photos"][0] ? image1 = params['dog']["photos"][0]["medium"] : nil
        params['dog']["photos"][1] ? image2 = params['dog']["photos"][1]["medium"] : nil
        params['dog']["photos"][2] ? image3 = params['dog']["photos"][2]["medium"] : nil
        params['dog']["photos"][3] ? image4 = params['dog']["photos"][3]["medium"] : nil
        dog=Dog.find_or_create_by!(
            name: params['dog']["name"],
            gender: params['dog']["gender"],
            size: params['dog']["size"],
            age: params['dog']["age"],
            bio: params['dog']['description'],
            color: params['dog']['colors']['primary'],
            location: params['dog']["contact"]["address"]["city"],
            breed: params['dog']["breeds"]["primary"],
            api_dog_id: params['dog']["id"],
            image: image1,
            image2: image2,
            image3: image3,
            image4: image4,
            api_org_id: params['dog']['organization_id']
        )
        if dog.save
			render json: dog, status: :created
		else
			render json: dog.errors.full_messages, status: :unprocessable_entity
		end
    end    
end



class MovieController < ApplicationController

def list
    @movies = Movie.all


end

def show

    @movie = Movie.find(params[:id])

end

def new

    @movie = Movie.new
    @categories = Category.all

    

end

def movie_params
params.require(:movies).permit(:title, :year, :category_id, :price)

 end

def create

    @movie = Movie.new(movie_params)


    if  @movie.save

        redirect_to :action =>'list'

    else 
        @categories = Category.all
        
    end
end


def edit

    @movie =Movie.find(params[:id])

    @categories = Category.all

end 

def movie_params
    params.require(:movies).permit(:title, :year, :category_id, :price)

end

def update
  
   @movie = Movie.find(params[:id]) 

    if @movie.update_attributes(movie_params)

        redirect_to :action => 'show'

    else
        @categories = Category.all
        render :action => 'edit'

    end 
end

def delete

    Movie.find(params[:id]).destroy

    redirect_to :action => 'list'
end
def show_categories

    @category =Category.find(params[:id])
end


  def movie_params
    params.require(:movies).permit(:title, :year, :category_id, :price)

end

end
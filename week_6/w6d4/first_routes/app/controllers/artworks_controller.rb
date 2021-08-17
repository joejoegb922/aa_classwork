class ArtworksController < ApplicationController

    # def index(user_id)
    #     artworks = Artwork.all
    #     artwork_shared = ArtworkSha
    #     render json: artworks
    # end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end


    def create
        
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 422
        end 
        
    end

    def destroy 
        artwork = Artwork.find_by(id: params[:id])

        if artwork 
            artwork.destroy
            redirect_to artwork_url 
        end 
    end 

    def update
        artwork = Artwork.find_by(id: params[:id])

        if artwork.update(artwork_params)
            redirect_to artwork_url(artwork)
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    private 
    def artwork_params 
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end 
end
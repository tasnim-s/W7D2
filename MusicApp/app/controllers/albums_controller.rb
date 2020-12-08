class AlbumsController < ApplicationController
    def new
        @album = Album.new
        @band_id = params[:band_id]
        @bands = Band.all
        render :new
    end

    def create
    end

    def edit
    end

    def show
    end

    def update
    end

    def destroy
    end

    def album_params
        params.require(:album).permit(:title, :year, :live)
    end
end

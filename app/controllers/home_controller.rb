class HomeController < ApplicationController

    def index
        @feeds = Feed.all
    end

    def new
    end

    def create
        feed = Feed.new
        feed.title = params[:title]
        feed.content = params[:content]
        feed.save

        redirect_to action: 'index'
    end

    def destroy
        Feed.destroy(params[:id])
        redirect_to action: 'index'
    end

end

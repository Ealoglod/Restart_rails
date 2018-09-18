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

    def update
        feed = Feed.find(params[:id])
        @title = feed.title
        @content = feed.content
        @id = params[:id]
    end

    def done
        feed = Feed.find(params[:id])
        feed.title = params[:title]
        feed.content = params[:content]
        feed.save

        redirect_to action: 'index'
    end

    def create_comment
        new_comment = FeedComment.new
        new_comment.content = params[:content]
        new_comment.feed_id = params[:id]
        new_comment.save

        redirect_to action: 'index'
    end

    def comment_destroy
        FeedComment.destroy(params[:id])
        redirect_to action: 'index'
    end

end

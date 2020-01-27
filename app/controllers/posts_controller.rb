class PostsController < ApplicationController
    def post 
        @post = Post.create!(title: "Amgad", description: "My Name")
    end 
end 
# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# 1)Defined and inherted from application controller
class BlogPostsController < ApplicationController
  def index
    # 2) Created an instance variable (posts) that host an active record that'll get items in the blogpost table.
    @posts = BlogPost.all
  end

  def show
    # 3)It's calling upond a specific post id 
    @post = BlogPost.find(params[:id])
  end

  # 4)Its a method that'll help create a new blog post
  def new
    @post = Post.new
  end

  def create
    # 5) Instance variable that takes in a blogpost that takes in a parameter
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # 6) Updating the blog post by asking the user to edit the title, and content to be valid
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # 7) If the blog fails to be destroyed, it'll redirect the user to the post they were trying to destroy.
      redirect_to blog_post_path(@post)
    end
  end

  # 8)Strong params is sperated by the private keyword
  private
  def blog_post_params
    # 9)
    params.require(:blog_post).permit(:title, :content)
  end

end


# FILE: app/models/blog_post.rb

class BlogPost < ApplicationRecord
  # 10) The assosiation describes the relationships between tables.
  has_many :comments
end

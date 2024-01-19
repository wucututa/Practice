class PostsController < ApplicationController
  include Pagy::Backend
  include RatesHelper

  before_action :set_post, only: %i[ show edit update destroy ]



  # GET /posts or /posts.json
  def index
    @q = Post.ransack(params[:q])
    if params[:q]
      rich_text_content = Post.joins(:rich_text_content)
      .where("action_text_rich_texts.body LIKE :search OR title LIKE :search", search: "%#{params[:q][:title_or_content_cont]}%")
      @pagy, @posts = pagy rich_text_content
    else
      @pagy, @posts = pagy (@q.result)
    end

  end

  # GET /posts/1 or /posts/1.json
  def show
    @rate = Rate.where(post_id: params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:tilte, :content)
    end
end

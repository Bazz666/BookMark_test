class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]

  # GET /bookmarks or /bookmarks.json
  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all.order(name: :desc)

  end

  # GET /bookmarks/1 or /bookmarks/1.json
  def show
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks or /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)
    unless @bookmark.save
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookmarks/1 or /bookmarks/1.json
  def update
    @bookmark.update(bookmark_params)
  end

  # DELETE /bookmarks/1 or /bookmarks/1.json
  def destroy
    if @bookmark.destroy
      @bookmarks = bookmark.all.order(updated_at: :desc)
      respond_to do |format|
        format.js { render nothing: true }
        format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = bookmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_params
      params.require(:bookmark).permit(:name, :url, :category_id, {category_ids: []})
    end
end

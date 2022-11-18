class BookmarksController < ApplicationController

    # before_action :set_bookmark, only: %i[new create]

    # GET /bookmarks or /bookmarks.json
    # def index
    #   @bookmarks = Bookmark.all
    # end

    # GET /bookmarks/1 or /bookmarks/1.json
    # def show
    #   @bookmark = Bookmark.find(params[:id])
    #   @movies = @bookmark.movies
    # end

    # GET /bookmarks/new
    def new
      # @movie = movie.find(params[:movie_id])
      @bookmark = Bookmark.new
    end

    # GET /bookmarks/1/edit
    # def edit
    # end

    # POST /bookmarks or /bookmarks.json
    def create
      @bookmark = Bookmark.new(bookmark_params)
      @bookmark.save
        redirect_to bookmarks_path

      # @bookmark = bookmark.new(bookmark_params)
      # # @movie = movie.find(params[:movie_id])
      # @bookmark.movie = @movie
      # if @bookmark.save
      #   redirect_to movie_bookmarks_path(@movie)
      # else
      #   render :new, status: :unprocessable_entity
      # end
      # @bookmark = bookmark.new(bookmark_params)
      # @bookmark = bookmark.new(bookmark_params)
      # # @bookmark.movies = @movie
      # # @bookmark.save
      # respond_to do |format|
      #   if @bookmark.save
      #     format.html { redirect_to bookmark_path, notice: "bookmark was successfully created." }
      #     format.json { render :show, status: :created, location: @bookmark }
      #   else
      #     format.html { render :new, status: :unprocessable_entity }
      #     format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      #   end
      # end
         # redirect_to bookmark_path(@bookmark)
    end

    # PATCH/PUT /bookmarks/1 or /bookmarks/1.json
    # def update
    #   respond_to do |format|
    #     if @bookmark.update(bookmark_params)
    #       format.html { redirect_to bookmark_url(@bookmark), notice: "bookmark was successfully updated." }
    #       format.json { render :show, status: :ok, location: @bookmark }
    #     else
    #       format.html { render :edit, status: :unprocessable_entity }
    #       format.json { render json: @bookmark.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end

    # DELETE /bookmarks/1 or /bookmarks/1.json
    # def destroy
    #   @bookmark.destroy

    #   respond_to do |format|
    #     format.html { redirect_to bookmarks_url, notice: "bookmark was successfully destroyed." }
    #     format.json { head :no_content }
    #   end
    # end

    private
      # Use callbacks to share common setup or constraints between actions.
      # def set_bookmark
      #   @bookmark = bookmark.find(params[:id])
      # end

      # Only allow a bookmark of trusted parameters through.
      def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id, :list_id)
      end
end

end

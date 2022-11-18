class ListsController < ApplicationController

    # before_action :set_list, only: %i[new create]

    # GET /lists or /lists.json
    def index
      @lists = List.all
    end

    # GET /lists/1 or /lists/1.json
    def show
      @list = List.find(params[:id])
      @movies = @list.movies
    end

    # GET /lists/new
    def new
      # @movie = movie.find(params[:movie_id])
      @list = List.new
    end

    # GET /lists/1/edit
    # def edit
    # end

    # POST /lists or /lists.json
    def create
      @list = List.new(list_params)
      @list.save
        redirect_to lists_path

      # @list = list.new(list_params)
      # # @movie = movie.find(params[:movie_id])
      # @list.movie = @movie
      # if @list.save
      #   redirect_to movie_lists_path(@movie)
      # else
      #   render :new, status: :unprocessable_entity
      # end
      # @list = list.new(list_params)
      # @list = List.new(list_params)
      # # @list.movies = @movie
      # # @list.save
      # respond_to do |format|
      #   if @list.save
      #     format.html { redirect_to list_path, notice: "list was successfully created." }
      #     format.json { render :show, status: :created, location: @list }
      #   else
      #     format.html { render :new, status: :unprocessable_entity }
      #     format.json { render json: @list.errors, status: :unprocessable_entity }
      #   end
      # end
         # redirect_to list_path(@list)
    end

    # PATCH/PUT /lists/1 or /lists/1.json
    # def update
    #   respond_to do |format|
    #     if @list.update(list_params)
    #       format.html { redirect_to list_url(@list), notice: "list was successfully updated." }
    #       format.json { render :show, status: :ok, location: @list }
    #     else
    #       format.html { render :edit, status: :unprocessable_entity }
    #       format.json { render json: @list.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end

    # DELETE /lists/1 or /lists/1.json
    # def destroy
    #   @list.destroy

    #   respond_to do |format|
    #     format.html { redirect_to lists_url, notice: "list was successfully destroyed." }
    #     format.json { head :no_content }
    #   end
    # end

    private
      # Use callbacks to share common setup or constraints between actions.
      # def set_list
      #   @list = List.find(params[:id])
      # end

      # Only allow a list of trusted parameters through.
      def list_params
        params.require(:list).permit(:name)
      end
end

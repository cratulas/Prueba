class BooksmarksController < ApplicationController
  before_action :set_booksmark, only: %i[ show edit update destroy ]

  # GET /booksmarks or /booksmarks.json
  def index
    @booksmarks = Booksmark.all
  end

  # GET /booksmarks/1 or /booksmarks/1.json
  def show
  end

  # GET /booksmarks/new
  def new
    @booksmark = Booksmark.new
  end

  # GET /booksmarks/1/edit
  def edit
  end

  # POST /booksmarks or /booksmarks.json
  def create
    @booksmarks = Booksmark.all
    @booksmark = Booksmark.new(booksmark_params)
      if @booksmark.save
      respond_to do |format|
        format.js {render nothing: true} 
      end
    end
    # unless @post.save 
    # render json: @post.errors
    # end
    
  end

  # PATCH/PUT /booksmarks/1 or /booksmarks/1.json
  def update
    @booksmarks = Booksmark.all.order(updated_at: :desc)
    respond_to do |format|
      if @booksmark.update(booksmark_params)
        format.js {render nothing: true} 
        format.html { redirect_to @booksmark, notice: "Booksmark was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booksmark.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /booksmarks/1 or /booksmarks/1.json
  def destroy
    if @booksmark.destroy
      @booksmarks = Booksmark.all.order(updated_at: :desc)
      respond_to do |format|
        format.js { render nothing: true }
        format.html { redirect_to booksmarks_url, notice: "Booksmark was successfully destroyed." }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booksmark
      @booksmark = Booksmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booksmark_params
      params.require(:booksmark).permit(:name, :url)
    end
end

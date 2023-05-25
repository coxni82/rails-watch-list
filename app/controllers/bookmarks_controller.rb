class BookmarksController < ApplicationController


  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @bookmark, notice: 'bookmark was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   @bookmark.destroy
  #   redirect_to lists_path, status: :see_other
  # end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end

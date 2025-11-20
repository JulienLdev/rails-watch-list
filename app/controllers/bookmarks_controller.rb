class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to @list, notice: "bookmark was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def destroy
  end

  private

    def bookmark_params
      params.require(:bookmark).permit(:comment)
    end
  end

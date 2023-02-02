class PicturesController < ApplicationController
  def picture_params
    params.require(:picture).permit(:title, :body, :photo)
  end
end

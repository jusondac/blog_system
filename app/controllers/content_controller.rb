class ContentController < ApplicationController
  def update
    @content = Content.find(params[:id])
    @content.update(position: params[:position].to_i)
    head :no_content
  end
end

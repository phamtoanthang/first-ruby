class TagsController < ApplicationController
  def index
  	@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
  	@markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @posts = Post.tagged_with(@tag.name)
  end
end
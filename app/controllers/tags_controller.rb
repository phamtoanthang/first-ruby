class TagsController < ApplicationController

  before_filter :markdown, only: [:index, :show]

  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @posts = Post.tagged_with(@tag.name)
  end

  private

  	def markdown
      @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end

end
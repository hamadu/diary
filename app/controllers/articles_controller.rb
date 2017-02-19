class ArticlesController < ApplicationController
  before_action :require_login
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Articles.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @user = User.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @user = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password)
  end
end

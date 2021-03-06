class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @recipes = Recipe.all.order(name: :asc)
    @users = User.all
  end
end

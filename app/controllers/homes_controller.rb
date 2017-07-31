class HomesController < ApplicationController
  before_action :side_menus1

  def index
    @bread_menu = {m1: '主页'}
  end

  def new

  end
end

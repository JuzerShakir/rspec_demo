class HomeController < ApplicationController
  def index
    @phones = Smartphone.all
  end

  def about
  end
end

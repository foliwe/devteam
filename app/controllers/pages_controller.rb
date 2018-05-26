class PagesController < ApplicationController
  def index
    @free_plan = Plan.find(1)
    @basic_plan = Plan.find(2)
  end

  def about

  end
end

class ViolatorsController < ApplicationController
  def index
    @Violators_all = Violator.all
  end

  def show
  end
end

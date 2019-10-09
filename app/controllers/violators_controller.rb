class ViolatorsController < ApplicationController
  def index
    @Violators_all = Violator.order(:name).page params[:page]
  end

  def show
  end
end

class TicketsController < ApplicationController
  def index
    @Tickets_all = (:name).page params[:page]
  end

  def show
    @Show_ticket = Ticket.find(params[:id])
  end
end

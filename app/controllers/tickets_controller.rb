class TicketsController < ApplicationController
  def index
    @Tickets_all = Ticket.order(:name).page params[:page]
  end

  def show
    @Show_ticket = Ticket.find(params[:id])
  end
end

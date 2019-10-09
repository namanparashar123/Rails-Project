class TicketsController < ApplicationController
  def index
    @Tickets_all = Ticket.all
  end

  def show
  end
end

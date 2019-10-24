# frozen_string_literal: true

class SearchController < ApplicationController
  def index; end

  def results
    @tickets = Ticket.where('ticket_number LIKE ?', "%#{params[:q]}%").order(:name).page params[:page]
    @ticket_count = Ticket.where('ticket_number LIKE ?', "%#{params[:q]}%")
  end

  def violator_results
    @violators = Violator.where('name LIKE ?',  "%#{params[:q]}%").order(:name).page params[:page]
    @violators_count = Violator.where('name LIKE ?', "%#{params[:q]}%")
  end
end

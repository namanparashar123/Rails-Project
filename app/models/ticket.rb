# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :violator

  validates :ticket_number, presence: true
end

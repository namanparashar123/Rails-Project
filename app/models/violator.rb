# frozen_string_literal: true

class Violator < ApplicationRecord
  has_many :tickets

  validates :name, presence: true
  validates :name, uniqueness: true
end

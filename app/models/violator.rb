# frozen_string_literal: true

class Violator < ApplicationRecord
  has_many :tickets
end

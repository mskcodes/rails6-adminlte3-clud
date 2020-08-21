# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, length: { minimum: 4 }, allow_blank: true
  validates :name, format: { with: /\A[a-zA-Z]*\z/ }
  validates :address, uniqueness: { case_sensitive: false }
  validates :phone, numericality: { only_integer: true }
end

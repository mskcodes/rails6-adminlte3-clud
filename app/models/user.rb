# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :address, length: { maximum: 255 }
  validates :phone, allow_blank: true, length: { maximum: 15 }, numericality: true
  validates :mail_address,
            length: { maximum: 255 },
            uniqueness: { case_sensitive: false },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end

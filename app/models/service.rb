# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :service_orders
  has_many :orders, through: :service_orders

  has_many :mechanic_services, dependent: :destroy
  has_many :mechanics, through: :mechanic_services

  validate :valid_price?

  monetize :price_cents

  def valid_price?
    errors.add(:services, 'price cant be negative or 0') if price <= 0
  end
end

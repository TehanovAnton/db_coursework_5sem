# frozen_string_literal: true

class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :mechanics, through: :orders

  validates_confirmation_of :password

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
end

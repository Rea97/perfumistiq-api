# frozen_string_literal: true

class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable,
         :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :lists, dependent: :destroy
  has_many :shots, dependent: :destroy
  has_many :compliments, dependent: :destroy
  has_many :complains, dependent: :destroy
end

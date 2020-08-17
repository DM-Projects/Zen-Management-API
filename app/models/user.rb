# frozen_string_literal: true

class User < ApplicationRecord
    # attr_reader :name, :email, :id, :username

  has_many :tickets, dependent: :destroy
  has_many :issues, dependent: :destroy
  has_and_belongs_to_many :projects, dependent: :destroy
end

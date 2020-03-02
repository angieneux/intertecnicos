# frozen_string_literal: true

class CreditPayment < ApplicationRecord
  belongs_to :wallet
end

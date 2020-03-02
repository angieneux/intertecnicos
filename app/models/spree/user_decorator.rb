# frozen_string_literal: true

Spree::User.class_eval do
  ## Callbacks
  before_save :assign_unique_credit_wallet
  ## Associations
  has_one :credit_wallet, foreign_key: :spree_user_id

  private

  def assign_unique_credit_wallet
    build_credit_wallet(balance: 0.0)
  end
end

# frozen_string_literal: true

class CreditWallet < ApplicationRecord
  ## Changes versioning
  has_paper_trail
  ## Associations
  belongs_to :user, class_name: "::#{Spree.user_class}", foreign_key: :spree_user_id
end

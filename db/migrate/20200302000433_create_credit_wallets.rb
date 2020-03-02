# frozen_string_literal: true

class CreateCreditWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_wallets do |t|
      t.float :balance
      t.belongs_to :spree_user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

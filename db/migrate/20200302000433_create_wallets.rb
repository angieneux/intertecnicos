# frozen_string_literal: true

class CreateWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :wallets do |t|
      t.float :balance
      t.belongs_to :spree_user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

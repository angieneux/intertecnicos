class CreateCreditPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_payments do |t|
      t.belongs_to :wallet, foreign_key: true

      t.timestamps
    end
  end
end

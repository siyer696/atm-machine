class CreateTransacs < ActiveRecord::Migration[6.1]
  def change
    create_table :transacs do |t|
      t.string :transaction_type
      t.integer :amount
      t.integer :account_id

      t.timestamps
    end
  end
end

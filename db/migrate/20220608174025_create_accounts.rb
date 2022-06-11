class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :type
      t.integer :balance

      t.timestamps
    end
  end
end

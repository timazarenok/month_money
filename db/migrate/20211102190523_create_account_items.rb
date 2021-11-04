class CreateAccountItems < ActiveRecord::Migration[5.2]
  def change
    create_table :account_items do |t|
      t.references :category, foreign_key: true
      t.decimal :value, default: 0

      t.timestamps
    end
  end
end

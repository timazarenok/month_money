class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.string :title
      t.integer :days

      t.timestamps
    end
  end
end

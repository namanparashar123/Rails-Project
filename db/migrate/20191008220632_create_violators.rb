class CreateViolators < ActiveRecord::Migration[6.0]
  def change
    create_table :violators do |t|
      t.integer :ticket_number
      t.string :name

      t.timestamps
    end
  end
end

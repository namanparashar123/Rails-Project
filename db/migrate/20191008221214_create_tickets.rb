class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_number
      t.string :issue_date
      t.string :violation
      t.string :street
      t.references :violator, null: false, foreign_key: true
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end

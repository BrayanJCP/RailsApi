class CreateRecordings < ActiveRecord::Migration[5.2]
  def change
    create_table :recordings do |t|
      t.string :status
      t.integer :temp
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end

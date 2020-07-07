class CreateTwinResults < ActiveRecord::Migration[5.2]
  def change
    create_table :twin_results do |t|
      t.integer :before_result
      t.text :result

      t.timestamps
    end
  end
end

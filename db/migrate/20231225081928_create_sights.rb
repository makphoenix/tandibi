class CreateSights < ActiveRecord::Migration[7.1]
  def change
    create_table :sights do |t|
      t.references :place, null: false, foreign_key: true
      t.string :activity_type, null: false

      t.timestamps
    end
  end
end

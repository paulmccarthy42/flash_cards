class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.string :part_of_speech
      t.string :translation
      t.references :language, foreign_key: true
      t.timestamps null: false
    end
  end
end

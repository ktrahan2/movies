class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.references :actor, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end

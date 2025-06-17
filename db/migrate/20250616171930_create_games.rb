class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.boolean :is_over

      t.timestamps
    end
  end
end

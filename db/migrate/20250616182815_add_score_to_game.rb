class AddScoreToGame < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :score, :integer, default: 0
  end
end

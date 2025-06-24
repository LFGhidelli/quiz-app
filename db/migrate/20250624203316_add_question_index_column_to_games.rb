class AddQuestionIndexColumnToGames < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :current_question_index, :integer, default: 0
  end
end

class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :correct_answer

      t.timestamps
    end
  end
end

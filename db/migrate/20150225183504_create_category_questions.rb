class CreateCategoryQuestions < ActiveRecord::Migration
  def change
    create_table :category_questions do |t|
      t.integer :question_id
      t.integer :category_id

      t.timestamps
    end
  end
end

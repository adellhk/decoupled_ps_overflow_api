class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :content
      t.integer :question_id
      t.integer :user_id
      t.integer :vote_count, default: 0

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :video_question
      t.text :content
      t.references  :user,               foreign_key: true
      t.timestamps
    end
  end
end

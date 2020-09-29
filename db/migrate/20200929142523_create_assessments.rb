class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.integer :body_fat_percent
      t.string :health_goal
      t.integer :user_id

      t.timestamps
    end
  end
end

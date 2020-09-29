class CreateWorkoutLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_logs do |t|
      t.string :date
      t.integer :duration
      t.integer :calories_burned
      t.integer :user_id
      t.integer :workout_id

      t.timestamps
    end
  end
end

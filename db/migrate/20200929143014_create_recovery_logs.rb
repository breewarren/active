class CreateRecoveryLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :recovery_logs do |t|
      t.string :date
      t.integer :duration
      t.integer :recovery_points
      t.integer :user_id
      t.integer :recovery_id

      t.timestamps
    end
  end
end

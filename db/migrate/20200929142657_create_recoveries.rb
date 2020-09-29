class CreateRecoveries < ActiveRecord::Migration[5.0]
  def change
    create_table :recoveries do |t|
      t.string :recovery_type

      t.timestamps
    end
  end
end

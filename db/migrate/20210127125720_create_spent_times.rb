class CreateSpentTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :spent_times do |t|
      t.string :total_time
      t.string :today_time

      t.timestamps
    end
  end
end

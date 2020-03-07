class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      # idカラムも自動的に入っている

      t.timestamps
    end
  end
end

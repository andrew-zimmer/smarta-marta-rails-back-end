class CreateQuickPicks < ActiveRecord::Migration[6.0]
  def change
    create_table :quick_picks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :station
      t.string :direction
      t.string :rail

      t.timestamps
    end
  end
end

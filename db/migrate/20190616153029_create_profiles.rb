class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true

      t.integer :age,             null: false
      t.integer :sex,             null: false
      t.float   :height,          null: false
      t.float   :weight,          null: false
      t.float   :activity_amount, null: false

      t.timestamps
    end
  end
end

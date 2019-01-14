class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.string :artist
      t.string :email

      t.timestamps
    end
  end
end

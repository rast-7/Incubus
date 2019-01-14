class CreateJoinTableUsersHistories < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :histories do |t|
      t.index [:user_id, :history_id]
      t.index [:history_id, :user_id]
    end
  end
end

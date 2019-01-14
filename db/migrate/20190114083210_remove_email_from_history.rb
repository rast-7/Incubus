class RemoveEmailFromHistory < ActiveRecord::Migration[5.1]
  def change
    remove_column :histories, :email, :string
  end
end

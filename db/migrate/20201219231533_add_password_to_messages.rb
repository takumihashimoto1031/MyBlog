class AddPasswordToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :password, :string
  end
end

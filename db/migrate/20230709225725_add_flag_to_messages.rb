class AddFlagToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :flag, :boolean, default: false
  end
end

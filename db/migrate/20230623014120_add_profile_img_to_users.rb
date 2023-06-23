class AddProfileImgToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_img, :string, default: ''
  end
end

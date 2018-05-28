class AddXAppTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :x_app_token, :string
  end
end

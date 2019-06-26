class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change

    # ==========ここから追加する==========
    add_column :users, :name, :string, null: false, default: '', limit: 100
    add_column :users, :self_introduction, :string, limit: 500
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :img_name, :string
    # ==========ここまで追加する==========

  end
end
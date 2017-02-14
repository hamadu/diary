class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string   :name,           limit: 255, null: false
      t.string   :password,       limit: 255, null: false
      t.datetime :last_logined_at
      t.timestamps
    end
  end
end

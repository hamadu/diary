class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body
      t.datetime :publish_on, null: false

      t.timestamps
    end
  end
end

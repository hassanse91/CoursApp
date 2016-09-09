class CreateCours < ActiveRecord::Migration
  def change
    create_table :cours do |t|
      t.string :title
      t.string :url
      t.string :body

      t.timestamps null: false
    end
  end
end

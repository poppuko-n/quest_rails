class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :about
      t.text :article
      t.string :tag

      t.timestamps
    end
  end
end

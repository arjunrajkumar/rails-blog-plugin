class CreateBloggComments < ActiveRecord::Migration[6.0]
  def change
    create_table :blogg_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps
    end
  end
end

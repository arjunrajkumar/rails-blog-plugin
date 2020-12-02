class AddAuthorIdToBloggArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :blogg_articles, :author_id, :integer
  end
end

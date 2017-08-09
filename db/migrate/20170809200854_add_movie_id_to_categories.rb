class AddMovieIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :movie_id, :integer
  end
end

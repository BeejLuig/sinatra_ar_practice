class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string  :title
      t.string  :description
      t.string  :rating
      t.integer :duration
      t.integer :user_rating
    end
  end
end
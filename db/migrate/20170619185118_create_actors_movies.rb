class CreateActorsMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end

    create_table :movies do |t|
      t.string :title
      t.string :summary
      t.integer :year

      t.timestamps
    end

    create_table :actors_movies, id: false do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :movie, index: true
    end
  end
end

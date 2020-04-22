class CreateDogs < ActiveRecord::Migration[5.2] #<-- this num must match version in Gemfile.lock
  def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end
 
  def down
    drop_table :dogs
  end
end

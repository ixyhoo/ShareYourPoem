class CreatePoesies < ActiveRecord::Migration[7.0]
  def change
    create_table :poesies do |t|
      t.string :nom
      t.string :contenu
      t.string :auteur

      t.timestamps
    end
  end
end

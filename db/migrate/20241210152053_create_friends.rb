class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :string
      t.string :las_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

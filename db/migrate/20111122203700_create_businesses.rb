class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end

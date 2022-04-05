class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.integer "age"
      t.string "name"
      t.timestamps
    end
  end
end

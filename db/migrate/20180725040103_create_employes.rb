class CreateEmployes < ActiveRecord::Migration[5.2]
  def change
    create_table :employes do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :name
      t.integer :code
      t.string :address

      t.timestamps
    end
  end
end

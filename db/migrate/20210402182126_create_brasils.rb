class CreateBrasils < ActiveRecord::Migration[6.0]
  def change
    create_table :brasils do |t|
      t.integer :ispb
      t.string :name
      t.integer :code
      t.string :fullname

      t.timestamps
    end
  end
end

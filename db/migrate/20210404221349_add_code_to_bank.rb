class AddCodeToBank < ActiveRecord::Migration[6.0]
  def change
    add_column :banks, :code, :integer
  end
end

class RemoveCodeFromBanks < ActiveRecord::Migration[6.0]
  def change
    remove_column :banks, :code, :integer
  end
end

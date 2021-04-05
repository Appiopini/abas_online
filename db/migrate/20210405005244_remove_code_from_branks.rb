class RemoveCodeFromBranks < ActiveRecord::Migration[6.0]
  def change
    remove_column :banks, :code
  end
end

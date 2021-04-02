class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    change_table :banks do |t|
      t.rename :name, :banco
      t.rename :code, :conta
      t.rename :address, :agencia
    end
  end
end

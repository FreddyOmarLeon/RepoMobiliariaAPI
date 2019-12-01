class CreateInmuebles < ActiveRecord::Migration[5.1]
  def change
    create_table :inmuebles do |t|
      t.string :direccion
      t.decimal :precio

      t.timestamps
    end
  end
end

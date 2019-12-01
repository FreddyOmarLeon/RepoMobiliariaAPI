class CreateCita < ActiveRecord::Migration[5.1]
  def change
    create_table :cita do |t|
      t.integer :Inmueble_id
      t.string :nombreCliente
      t.datetime :fechaVisita
      t.string :estatus

      t.timestamps
    end
  end
end

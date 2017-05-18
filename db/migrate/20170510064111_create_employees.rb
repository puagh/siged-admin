class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :rfc
      t.string :fecha_nac
      t.string :sexo
      t.string :calle
      t.string :numero
      t.string :colonia
      t.string :codigo_p
      t.string :municipio
      t.string :estado
      t.string :tel
      t.string :email
      t.string :area
      t.string :cargo
      t.string :usuario
      t.string :contra

      t.timestamps null: false
    end
  end
end

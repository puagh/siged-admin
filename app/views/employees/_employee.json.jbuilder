json.extract! employee, :id, :nombre, :paterno, :materno, :rfc, :fecha_nac, :sexo, :calle, :numero, :colonia, :codigo_p, :municipio, :estado, :tel, :email, :area, :cargo, :usuario, :contra, :created_at, :updated_at
json.url employee_url(employee, format: :json)

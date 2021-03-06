require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { area: @employee.area, calle: @employee.calle, cargo: @employee.cargo, codigo_p: @employee.codigo_p, colonia: @employee.colonia, contra: @employee.contra, email: @employee.email, estado: @employee.estado, fecha_nac: @employee.fecha_nac, materno: @employee.materno, municipio: @employee.municipio, nombre: @employee.nombre, numero: @employee.numero, paterno: @employee.paterno, rfc: @employee.rfc, sexo: @employee.sexo, tel: @employee.tel, usuario: @employee.usuario }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { area: @employee.area, calle: @employee.calle, cargo: @employee.cargo, codigo_p: @employee.codigo_p, colonia: @employee.colonia, contra: @employee.contra, email: @employee.email, estado: @employee.estado, fecha_nac: @employee.fecha_nac, materno: @employee.materno, municipio: @employee.municipio, nombre: @employee.nombre, numero: @employee.numero, paterno: @employee.paterno, rfc: @employee.rfc, sexo: @employee.sexo, tel: @employee.tel, usuario: @employee.usuario }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end

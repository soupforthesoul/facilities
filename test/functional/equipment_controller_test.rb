require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { assetprofile: @equipment.assetprofile, barcode: @equipment.barcode, building: @equipment.building, components: @equipment.components, department: @equipment.department, floor: @equipment.floor, instructions: @equipment.instructions, manufacturer: @equipment.manufacturer, model: @equipment.model, partnumber: @equipment.partnumber, partof: @equipment.partof, pmschedule: @equipment.pmschedule, room: @equipment.room, serial: @equipment.serial, system: @equipment.system, uniqueid: @equipment.uniqueid, url: @equipment.url, warrend: @equipment.warrend, warrstart: @equipment.warrstart }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    put :update, id: @equipment, equipment: { assetprofile: @equipment.assetprofile, barcode: @equipment.barcode, building: @equipment.building, components: @equipment.components, department: @equipment.department, floor: @equipment.floor, instructions: @equipment.instructions, manufacturer: @equipment.manufacturer, model: @equipment.model, partnumber: @equipment.partnumber, partof: @equipment.partof, pmschedule: @equipment.pmschedule, room: @equipment.room, serial: @equipment.serial, system: @equipment.system, uniqueid: @equipment.uniqueid, url: @equipment.url, warrend: @equipment.warrend, warrstart: @equipment.warrstart }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end

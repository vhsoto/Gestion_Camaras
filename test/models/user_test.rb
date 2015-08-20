require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(name: 'Victor Soto', email: 'usuario@example.gov.co', 
  										password: "123456", password_confirmation: "123456")
  end

  test 'deberia_ser_valido' do
  	assert @user.valid?
  end

  test 'nombre_deberia_estar_presente' do
  	@user.name = "a" * 51
  	assert_not @user.valid?
  end

  test 'email_deberia_estar_presente' do
  	@user.email = "a" * 244 + "@example.com"
  	assert_not @user.valid?
  end

  test "email_valido" do
  	email_validos = %w[usuario@example.gov.co]
  	email_validos.each do |email_valido|
  		@user.email = email_valido
  		assert_not @user.valid? , "#{email_valido.inspect} debería ser valido"
  	end
  end

  test "email deberia ser unico" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password deberia estar" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password deberia tener minimo" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end

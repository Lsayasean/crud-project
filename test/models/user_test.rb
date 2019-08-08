require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:'example', email:'example@example.com',
                      password:'foobar', password_confirmation: 'foobar')
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "  "
    assert_not @user.valid?
  end

  test "email sould be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should be 50 char or less" do 
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be over 250 char" do
    @user.email = "a" * 250 + '@email.com'
    assert_not @user.valid?
  end

  test "password should not be blank" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

end

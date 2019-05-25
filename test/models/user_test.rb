require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "jajajaja", email: "mail@mail.com", password: "foobar", password_confirmation: "foobar")
  end

  test "user" do
    assert @user.valid?
  end

  test "user_present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "mail_presence" do
    @user.email = "    "
    assert_not @user.valid?
  end

  test "name_length" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "mail_length_to_long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "mail_valid" do
    mail_array = %W[er@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cnkkkkkk]
    mail_array.each do |m|
      @user.email = m
      assert @user.valid?, "#{m.inspect} should be valid!"
    end
  end

  test "mail_invalid" do
    mail_array = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    mail_array.each do |m|
      @user.email = m
      assert_not @user.valid?, "#{m.inspect} should be invalid"
    end
  end

  test "mail_unique" do
    dup_mail = @user.dup
    dup_mail.email = @user.email.upcase
    @user.save
    assert_not dup_mail.valid?
  end
  
  test "mail_downcase" do
    mix_case_email = "EmAiLaDDress@mail.CoM"
    @user.email = mix_case_email
    puts("hhhhhhhhhhhhhhhhhhhhhhhhhhh")
    puts(@user.email)
    puts(@user.inspect)
    @user.save
    puts(@user.inspect)
    #@user.reload
    #reloadしなくても値変わってるじゃないか
    #bundleしたら変わんなくなった
    #password_confirmationがないだけだった
    assert_equal mix_case_email.downcase, @user.email
  end
  
  test "password_non_blank" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  
  test "password_min_length" do
    @user.password = @user.password_confirmation =  "a" * 5
    assert_not @user.valid?
  end
end

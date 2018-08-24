require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/'
    assert_response :success
  end

  test "home is emails/index" do
    get '/'
    assert_template "emails/index"
  end

  test "home has h1" do
    get '/'
    assert_select 'h1', :count => 1
  end

  test "has wrapper" do
    get '/'
    assert_select '.wrapper'
  end

  test "has container" do
    get '/'
    assert_select '.container'
  end

  test "home has 2 column" do
    get '/'
      assert_select 'div.container' do
        assert_select 'div', :minimum => 2
      end
  end

  test "has ul && li" do
    get '/'
    assert_select 'div.container' do
      assert_select 'div' do
        assert_select 'ul'
        assert_select 'li'
      end
    end
  end

end

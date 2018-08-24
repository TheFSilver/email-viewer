require 'test_helper'

class EmailTest < ActiveSupport::TestCase

  def setup
    @email = Email.new(object: "Example Object", body: "some random text", read: false)
  end

  test "should be valid" do
    assert @email.valid?
  end

end

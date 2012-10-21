require "PPT"
require "test/unit"

class TCTestPPTGame < Test::Unit::TestCase  

  def test_typecheck
    @tested = PPTGame.new

    assert_raise( RuntimeError ) { @tested.Number2Value 'y' }
    assert_raise( RuntimeError ) { @tested.Number2Value -1 }
  end

end

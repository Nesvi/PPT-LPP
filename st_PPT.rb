require "PPT"
require "test/unit"

class STTestPPTGame < Test::Unit::TestCase  

  def test_simple

    @tested = PPTGame.new
    
    assert_equal 0, @tested.NewRoundV(2,1)
    assert_equal 0, @tested.NewRoundV(1,0)
    assert_equal 0, @tested.NewRoundV(0,2)

    assert_equal 1, @tested.NewRoundV(1,2)
    assert_equal 1, @tested.NewRoundV(0,1)
    assert_equal 1, @tested.NewRoundV(2,0)

  end

end

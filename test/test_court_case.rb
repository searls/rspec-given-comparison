$:.push("lib")

require 'court_case'

require "minitest/autorun"

class TestCourtCase < Minitest::Test
  def setup
    @subject = CourtCase.new
  end

  def test_that_plaintiff_wins_when_it_has_more_opinions
    @subject.write_opinion!(:plaintiff, :alito, :roberts)
    @subject.write_opinion!(:defendant, :ginsberg)

    result = @subject.form_decision

    assert_equal :plaintiff, result.winner
  end
end

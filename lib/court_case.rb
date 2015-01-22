Decision = Struct.new(:winner)

class CourtCase
  def initialize
    @opinions = Hash.new { [] }
  end

  def write_opinion!(in_favor_of, *supporters)
    @opinions[in_favor_of] += supporters
  end

  def form_decision
    Decision.new(@opinions.max_by { |(k,v)| v.size }.first)
  end
end

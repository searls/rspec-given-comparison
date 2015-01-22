require 'court_case'

require 'rspec/given'

describe CourtCase do
  describe "#form_decision" do
    context "plaintiff wins" do
      Given { subject.write_opinion!(:plaintiff, :alito, :roberts) }
      Given { subject.write_opinion!(:defendant, :ginsberg) }
      When(:result) { subject.form_decision }
      Then { result.winner == :plaintiff }
    end
  end
end

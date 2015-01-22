require 'court_case'

describe CourtCase do
  describe "#form_decision" do
    context "plaintiff wins" do
      before do
        subject.write_opinion!(:plaintiff, :alito, :roberts)
        subject.write_opinion!(:defendant, :ginsberg)
      end
      let(:result) { subject.form_decision }

      it "says the plaintiff won" do
        expect(result.winner).to eq(:plaintiff)
      end
    end
  end
end

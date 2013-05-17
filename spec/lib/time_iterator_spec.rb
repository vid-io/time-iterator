require "spec_helper"


describe TimeIterator do

  it "should include Enumerable" do
    TimeIterator.new(Time.now, Time.now).should be_kind_of Enumerable
  end


  context "#each" do
    let(:pivot) { Time.utc(1970, 1, 1) }

    context "when since < till" do
      let(:iter) { TimeIterator.new pivot, pivot + 60, 30 }

      it "should yield every Time stop ascending" do
        lambda{ |b| iter.each(&b) }
          .should yield_successive_args(pivot, pivot + 30, pivot + 60)
      end
    end

    context "when since > till" do
      let(:iter) { TimeIterator.new pivot + 60, pivot, 30 }

      it "should yield every Time stop descending" do
        lambda{ |b| iter.each(&b) }
          .should yield_successive_args(pivot + 60, pivot + 30, pivot)
      end
    end

  end

end

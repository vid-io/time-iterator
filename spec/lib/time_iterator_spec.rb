require "spec_helper"


describe TimeIterator do

  let(:start) { Time.now - 60 }
  let(:stop)  { start + 60 }
  let(:iter)  { TimeIterator.new start, stop, 30 }


  it "should include Enumerable" do
    iter.should be_kind_of Enumerable
  end


  context "#each" do
    it "should yield Time steps" do
      lambda{ |b| iter.each(&b) }
        .should yield_successive_args(start, start + 30, start + 60)
    end
  end

end

require 'spec_helper'

describe Host do
  subject do
    create(:host)
  end

  context "is valid" do
    it "without a name" do
      subject.name = nil
      expect(subject).to be_valid
    end

    it "with a name" do
      subject.name = "Test"
      expect(subject).to be_valid
    end
  end

  context "is invalid" do
    it "without an address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end
  end
end

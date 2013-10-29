require 'spec_helper'

describe Script do
  subject do
    build(:script)
  end

  context "is invalid" do
    it "without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "with an empty title" do
      subject.title = "  "
      expect(subject).to_not be_valid
    end
  end

  context "is valid" do
    it "with a title" do
      subject.title = "Project 1"
      expect(subject).to be_valid
    end
  end
end

require 'spec_helper'

describe Project do
  it "is invalid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is invalid with an empty title" do
    subject.title = "  "
    expect(subject).to_not be_valid
  end
end

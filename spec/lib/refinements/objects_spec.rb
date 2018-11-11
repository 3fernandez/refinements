# frozen_string_literal: true

require "spec_helper"

RSpec.describe Refinements::Objects do
  using Refinements::Objects

  # These are contrived examples for simplicity to ensure method calls work.
  describe "#then" do
    subject { "one two three" }

    it "responds to single call" do
      result = subject.then(&:capitalize)
      expect(result).to eq("One two three")
    end

    it "reponds to multiple calls" do
      result = subject.then(&:capitalize).then(&:size)
      expect(result).to eq(13)
    end
  end
end
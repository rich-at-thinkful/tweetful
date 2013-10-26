require 'spec_helper'

describe User do
  context "factories" do
    describe "#user" do
      subject { FactoryGirl.build(:user) }

      it { should be_valid }
    end
  end

  context "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
  end
end

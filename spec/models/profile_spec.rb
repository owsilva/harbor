require "rails_helper"

RSpec.describe Profile, type: :model do
  context "when create an profile" do
    subject(:profile) { create(:profile) }

    it "creates new profile" do
      expect { profile }.to change(described_class, :count).by(1)
    end
  end

  describe ".associations" do
    subject { build(:profile) }

    it { is_expected.to belong_to(:user) }
  end

  describe ".validations" do
    subject { build(:profile) }

    it { is_expected.to belong_to(:user).optional(false) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:gender) }
    # it { is_expected.to validate_inclusion_of(:gender).in_array(["undefined", "male", "female"]) }
  end
end

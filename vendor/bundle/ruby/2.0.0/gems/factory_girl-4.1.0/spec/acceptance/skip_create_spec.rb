require "spec_helper"

describe "skipping the default create" do
  before do
    define_model("User", email: :string)

    FactoryGirl.define do
      factory :user do
        skip_create

        email "john@example.com"
      end
    end
  end

  it "doesn't execute anything when creating the instance" do
    FactoryGirl.create(:user).should_not be_persisted
  end
end

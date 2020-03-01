require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:owner) }

    it { should have_many(:likes) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:commenters) }

    it { should have_many(:fans) }

    end

    describe "Validations" do
      
    end
end

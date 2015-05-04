require 'spec_helper'

describe Board do
  
  it { is_expected.to respond_to(:grid)}
  it { is_expected.to respond_to(:place_ship).with(2).arguments }

  it "has a grid that contains a location A1" do
    expect(subject.grid).to include(:A1)
  end

  it "has water in the location A1 before any ships have been placed" do 
    expect(subject.grid[:A1]).to eq :w
  end

  describe "#place_ship" do
    
    let(:ship) { double :ship }

    it "places a ship onto a location on the board" do
      subject.place_ship(ship, :A1)
      expect(subject.grid[:A1]).to eq(ship)
    end

  end

end
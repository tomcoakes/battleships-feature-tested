require 'spec_helper'

feature 'As a player I want to prepare for the game by placing ships.' do

  let(:board) { Board.new }
  let(:player) { Player.new }
  let(:ship) { Ship.new }

  scenario 'I can place a ship onto the board' do
    player.place_ship(ship, :A1)
    expect(board[:A1]).to eq(ship)
  end

end
require 'videogame'
require 'player'

describe Videogame do

  subject(:game) {described_class.new("jenny", "computer")}
  let(:player_1) {double("jenny")}
  let(:player_2) {Player.new("computer")}

  context "#initialize" do
    it '#initializes player name' do
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  context "#play_round" do
    it "playes the round" do
      expect(game.play_round(player_1)).to eq "20"#change {player_1.points}.by (10)
    end
  end

end
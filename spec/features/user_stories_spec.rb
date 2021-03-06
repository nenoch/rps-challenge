require './lib/computer.rb'

describe 'User Stories' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  feature 'sign up' do
    scenario 'a player would like to register to play' do
      sign_up_and_play
      expect(page).to have_text 'Choose your weapon Dino!'
    end
  end

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'play' do

    scenario 'a player would like to play rock/paper/scissors' do
      sign_up_and_play
      choose('rock')
      click_button 'PLAY'
      expect(page).to have_text 'You chose ROCK!'
    end

    scenario 'a player would like to play against the computer' do
      # ::???::
      # Is there a better way to test for randomness?
      #
      allow_any_instance_of(Array).to receive(:sample).and_return("paper")
      sign_up_and_play
      choose('rock')
      click_button 'PLAY'
      expect(page).to have_text 'I chose PAPER!'
    end
  end
end

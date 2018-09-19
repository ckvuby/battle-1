feature 'Testing infrastructure' do
  scenario 'confirms the infrastructure is working' do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end

feature 'Enter names' do
  scenario 'players enter names, submit and see names on screen' do
    sign_in_and_play
    expect(page).to have_content('Patrick', 'Chloe')
  end
end

feature 'Hit Points' do
  scenario "Player 2's hit points are visible" do
    sign_in_and_play
    expect(page).to have_content 'Chloe: 600hp'
  end
end

feature 'Attack' do
  scenario "Player 1 attacks Player 2 and get confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Patrick attacked Chloe'
  end

  scenario 'Player 1 attacks player 2 and reduces HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Chloe: 600hp'
    expect(page).to have_content 'Chloe: 590hp'
  end
end

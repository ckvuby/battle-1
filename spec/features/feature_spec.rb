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
    expect(page).to have_content 'Chloe: 600HP'
  end
end

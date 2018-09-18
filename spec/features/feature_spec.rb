feature 'Testing infrastructure' do
  scenario 'confirms the infrastructure is working' do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end

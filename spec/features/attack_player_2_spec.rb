# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Attack other player" do
  scenario "Player 1 wants to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_text('Bob has attacked Nightmare')
  end

  scenario "Reduced player 2's HP by 10" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_text('Nightmare: 90HP')
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

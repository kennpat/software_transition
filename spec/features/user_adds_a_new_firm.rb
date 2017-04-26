require 'rails_helper'
#let's try to add a new firm to the list
feature 'A user wants to add a new firm to convert', %{
  As a user
  I want to be able to add a new firm
  So that I can track the changes in clients from one software package to another
} do

  scenario 'A user adds a new firm to the list' do
    visit new_firm_path
    fill_in 'Firm Name', with: 'Dewey, Cheetum & Howe, LLP'
    click_on 'Submit'

    expect(page).to have_content('Firm has been successfully added')
  end
end

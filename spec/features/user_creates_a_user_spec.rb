require 'rails_helper'

RSpec.describe 'the user creation success path' do
  it 'creates the user' do
    visit '/'
    click_link 'Create a user'

    # Step 1
    fill_in 'Email', with: 'user@example.com'
    click_button 'Continue'

    # Step 2
    fill_in 'First name', with: 'Foo'
    fill_in 'Last name', with: 'Bar'
    click_button 'Continue'

    # Step 3
    fill_in 'Address 1', with: 'Bla bla Bla'
    fill_in 'Zip code', with: 'XYZ1234'
    fill_in 'City', with: 'FoobarCity'
    select('France', from: 'Country')
    click_button 'Continue'

    # Step 4
    fill_in 'Phone number', with: '+3366666666'
    click_button 'Finish'

    expect(page).to have_content('User succesfully created!')
  end
end

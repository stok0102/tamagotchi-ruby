require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the tamagotchi path', {:type => :feature}) do
  it('takes name from user and applies it to Tamagotchi div') do
    visit('/')
    fill_in('name', :with => "Ted")
    click_button('name')
    expect(page).to have_content('Ted')
    click_button('eat')
    expect(page).to have_content(11)
  end
end

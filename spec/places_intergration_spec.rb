require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('processes the locations the user has traveled to and makes a list') do
    visit('/')
    fill_in('location', :with => '')
    click_button('Add location')
    expect(page).to have_content('')
  end
end

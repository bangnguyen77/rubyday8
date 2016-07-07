require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the contact path', {:type => :feature}) do
  it('takes input from a field and creates a new contact') do
    visit('/contacts')
    fill_in('first_name', :with => "Bang")
    fill_in('last_name', :with => "Nguyen")
    fill_in('job_title', :with => "Student")
    fill_in('company', :with => "Epicodus")
    click_button('Submit')
    expect(page).to have_content("Bang")
  end

  it('add a new mailing address to the contact') do
    visit('/contacts/view/1')
    fill_in('street', :with => "6th Ave")
    fill_in('city', :with => "Portland")
    fill_in('state', :with => "Oregon")
    fill_in('zipcode', :with => "97201")
    select('Home', :from => 'type')
    click_button('Add Address')
    expect(page).to have_content("Oregon")
    expect(page).to have_content("97201")
    expect(page).to have_content("HOME")
  end

  it('add a new phone to the contact') do
    visit('/contacts/view/1')
    fill_in('phone', :with => "503-555-1234")
    click_button('Add Phone')
    expect(page).to have_content("503-555-1234")
  end

  it('add a new email address to the contact') do
    visit('/contacts/view/1')
    fill_in('email', :with => "epicodus@example.com")
    click_button('Add Email')
    expect(page).to have_content("epicodus@example.com")
  end
end

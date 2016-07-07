require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dealership path', {:type => :feature}) do
  it('takes input from a field and creates a new dealership') do
    visit('/dealerships')
    fill_in('name', :with => "Bob's Used Cars")
    click_button('Submit')
    expect(page).to have_content("Bob's Used Cars")
  end

  it('add a new car to a dealer') do
    visit('/dealerships/view/1')
    fill_in('make', :with => "Toyota")
    fill_in('model', :with => "Prius")
    fill_in('year', :with => 2000)
    fill_in('color', :with => "Blue")
    fill_in('engine_size', :with => "4L")
    fill_in('number_of_doors', :with => 4)
    click_button('Submit')
    expect(page).to have_content("Make: Toyota")
    expect(page).to have_content("Model: Prius")
  end
end

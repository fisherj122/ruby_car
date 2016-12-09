require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature, js: true do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I fill in the car make and model year' do
          fill_in 'make', with: 'DeLorean'
          fill_in 'year', with: '1985'
      end
      And 'I can submit the information' do
       click_button 'Simulate Car'
     end
     Then "I can see the car's info" do
       expect(page).to have_content('Make: DeLorean')
       expect(page).to have_content('Model Year: 1985')
     end
     And 'I can see the speed of the car' do
       expect(page).to have_content('Speed: 0 Km/h')
     end
     When "I can click the accelerate button" do
      click_button 'Accelerate'
      end
      Then 'the speed of the car should be 10Km/h higher' do
        expect(page).to have_content('Speed: 10 Km/h')
      end
    end
  end
end

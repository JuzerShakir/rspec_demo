require 'rails_helper'

RSpec.describe 'Smartphone features' do
  describe 'new action'  do
    describe 'form' do
      it 'must create new smartphones' do
        visit('/new')

        fill_in('Brand', with: 'HTC')
        fill_in('Model', with: 'Desire 626')
        click_button('Create')

        expect(current_path).to eql('/')
        expect(page).to have_content('HTC Desire 626')
      end
    end
  end
end

require 'rails_helper'

RSpec.describe 'Home features' do
    describe 'Index' do
        it 'should have title' do
            visit('/')
            expect(page).to have_content('Smartphones')
        end

        it 'should have url path' do
            visit('/')
            expect(current_path).to eql('/')
        end

        it 'should have content' do
            visit('/')
            click_link('About')
            expect(page).to have_content('About')
        end

        it 'must have a link to about page' do
            visit('/')
            click_link('About')
            expect(current_path).to eql('/about')
        end
    end
end

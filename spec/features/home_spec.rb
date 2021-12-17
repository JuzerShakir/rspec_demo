require 'rails_helper'

RSpec.describe 'Home features' do
    describe 'Index' do
        it 'should have url path' do
            visit('/')
            expect(current_path).to eql('/')
        end
        it 'should have title' do
            visit('/')
            expect(page).to have_content('Smartphones')
        end

        it 'lists all the smartphones' do
            Smartphone.create(brand: 'Google', model: 'Pixel 6', battery: 7000)
            Smartphone.create(brand: 'Xiomi', model: 'Mi 11x', battery: 5000)
            visit('/')
            expect(page).to have_content('Google Pixel 6')
            expect(page).to have_content('Xiomi Mi 11x')
        end

        it 'has a link to create new smartphones' do
            visit('/')
            click_link('Add new Smartphone')
            expect(current_path).to eql('/new')
        end

        it 'must have a link to about page' do
            visit('/')
            click_link('About')
            expect(current_path).to eql('/about')
        end

        it 'should have content' do
            visit('/')
            click_link('About')
            expect(page).to have_content('About')
        end
    end
end

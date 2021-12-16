require 'rails_helper'

RSpec.describe Smartphone, type: :model do
  subject { described_class.new(brand: 'Samsung', model: 'Galaxy Fold 2')}

  # checking validations for attributes
  describe 'Validation' do
    describe 'brand' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.brand = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'model' do
      it 'must be present' do
        expect(subject).to be_valid
        subject.model = nil
        expect(subject).to_not be_valid
      end
    end
  end

  # instance method
  describe '#full_name' do
    it 'must return full name of a smartphone with brand and model' do
      expect(subject.full_name).to eql('Samsung Galaxy Fold 2')
    end
  end

  # class method
  describe '.samsung' do
    it 'must return an ActiveRecord:Relation of only samsung smartphones' do
      s1 = described_class.create(brand:'Samsung', model: 'Galaxy')
      s2 = described_class.create(brand:'Sony', model: 'Plus 3')
      s3 = described_class.create(brand:'Samsung', model: 'Galaxy')
      s4 = described_class.create(brand:'Nokia', model: 'Lumia 1920')

      expect(described_class.samsung).to contain_exactly(
        s1,
        s3
      )
    end
  end
end

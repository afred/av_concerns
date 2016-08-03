require 'rails_helper'

describe FileSet do

  subject { described_class.new }

  describe 'has_av_concerns?' do
    it 'returns true' do
      expect(subject.has_av_concerns?).to eq true
    end
  end
end

require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#Hello' do
    it 'returns the :html view' do
      get :hello
      expect(subject.response).to have_content()
    end
  end
end

require 'rails_helper'

RSpec.describe StringCalculatorController, type: :controller do
  describe 'POST #calculate' do
    # it 'return 0 if empty string' do
    #   post :calculate, params: {numbers: [] }
    #   expect(response).to have_http_status(:success)
    #   expect(JSON.parse(response.body)['result']).to eq(0)
    # end

    # it 'returns an error for alphnumeric string' do
    #   post :calculate, params: { numbers: '1, a,3' }
    #   assert_response :unprocessable_entity
    #   assert_equal 'Invalid Input: Alphanumeric characters are not allowed', JSON.parse(response.body)['error']
    # end
  end
end

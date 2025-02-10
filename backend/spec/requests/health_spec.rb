require 'rails_helper'

RSpec.describe 'Healths', type: :request do
  describe 'GET /health' do
    context '正常時' do
      it 'status 200を返す' do
        get health_check_path

        expect(response).to have_http_status(:ok)
      end
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'ユーザーの作成年月が返されること' do
    user = User.new(email: 'hoge@example.com', created_at: Time.utc(2015, 1, 1, 12, 0, 0))
    expect(user.created_month).to eq '2015年01月'
  end
end

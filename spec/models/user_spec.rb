require 'rails_helper'

RSpec.describe User, type: :model do
  it "名を登録すると、姓名が取得できること" do
    user = User.new(name: "fuwa")
    expect(user.name).to eq "fuwa"
  end
end

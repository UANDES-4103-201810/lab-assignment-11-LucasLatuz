FactoryBot.define do
  factory :user do
    username "pichon123"
    email "pichon@delnido.cl"
    password "pajaro volador"
  end
  factory :message do
    user_id 1
    date 23-02-2018
    content "Salutations for everyone"
  end
end
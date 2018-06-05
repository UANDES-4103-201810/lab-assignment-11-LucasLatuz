FactoryBot.define do
  factory :message do
    date "2018-06-05"
    content "MyText"
    user nil
  end
  factory :user do
    username "MyString"
    email "MyString"
    password "MyString"
  end
  factory :User do
    username "pichon123"
    email "pichon@delnido.cl"
    password "pajaro volador"
  end
  factory :Message do
    user_id 1
    date 23-02-2018
    content "Salutations for everyone"
  end
end
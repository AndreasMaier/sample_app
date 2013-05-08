FactoryGirl.define do
  factory :user do
    name "Andreas Maier"
    email "andreas.maier@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
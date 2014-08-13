FactoryGirl.define do
  factory :user do
    name     "Bernd Kolb"
    email    "bernd@example.com"
    password "foobar1234"
    password_confirmation "foobar1234"
  end
end
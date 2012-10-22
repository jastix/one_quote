FactoryGirl.define do
  factory :quote do
    content "Some very smart quote!"
  end

  factory :user do
    name                  'Test name'
    email                 'example@example.com'
    provider              ''
    password              'foobar'
    password_confirmation 'foobar'
  end
end

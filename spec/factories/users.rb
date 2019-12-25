FactoryBot.define do

  factory :user do
    nickname {"abe"}
    email {"kkk@gmail.com"}
    password {"00000000"}
    password_confirmation {"00000000"}
    last_name {"鈴木"}
    first_name {"太朗"}
    last_name_kana {"スズキ"}
    first_name_kana {"タロウ"}
    birth_year_id {1989}
    birth_month_id {1}
    birth_day_id {1}
  end
end

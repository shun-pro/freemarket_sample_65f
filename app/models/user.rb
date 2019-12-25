class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
#登録
  validates :nickname, presence: true, length: { maximum: 20 }
  validates :email, :birth_year_id, :birth_month_id, :birth_day_id, presence: true
  validates :password, :password_confirmation, presence: true, length: { in: 7..128 }
  validates :last_name, :first_name, :last_name_kana, :first_name_kana, presence: true, length: { maximum: 35 }
  
  # def full_name(last_name, first_name)
  #   last_name + first_name
  # end

  # def full_name_kana(last_name_kana, first_name_kana)
  #   last_name_kana + first_name_kana
  # end

  # # yyyy/mm/dd の形式で表示
  # def birthday
  #   "#{BirthYyyy.find(self.birth_yyyy_id).year}/#{BirthMm.find(self.birth_mm_id).month}/#{BirthDd.find(self.birth_dd_id).day}"
end

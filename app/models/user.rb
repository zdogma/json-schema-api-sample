class User < ApplicationRecord
  enum gender: %i(女性 男性 その他)

  validates :name,
            presence: true,
            length: { in: 1..256 }
  validates :email,
            presence: true,
            length: { in: 1..256 },
            format: { with: %r{\A[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\z} }
  validates :gender,
            presence: true,
            inclusion: { in: genders.keys }
end

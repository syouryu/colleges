class User < ApplicationRecord

    has_secure_password

    #nameカラムの空値をなくす。
    validates :name,{presence: true}
    #emilsカラムの空値と重複をなくす
    validates :email,{presence: true, uniqueness: true}
end

class User < ApplicationRecord
    #nameカラムの空値をなくす。
    validates :name,{preence: true}
    #emilsカラムの空値と重複をなくす
    validates :email,{presence: true, uniqueness: true}

    validates :password, {presence: true}
end

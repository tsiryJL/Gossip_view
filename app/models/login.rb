class Login < ApplicationRecord

    has_secure_password
    has_secure_token :confirmation_token

    validates :username,
        format: {with: /\A[a-zA-A0-9]{2,20}\z/, message: 'ne doit contenir que des caractères alphanumériques'},
        uniquess: {case_sensitive: false}
    validates :email,
        format: {with: /\A[^@\=]+@([^@.\s]+\.)+[^@.\s]+\z/},
        uniquess: {case_sensitive: false}

    def to_session
        {id: id }
    end
end
 
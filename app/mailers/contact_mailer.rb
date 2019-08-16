class ContactMailer < ApplicationMailer

    def contact
        mail(to: 'contaact@test.fr',subject:'sujet de test')
    end

    

end

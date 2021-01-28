module API
  module Entities
    class User < API::Entities::Base
      # expose :login
      expose :name, documentation: { type: String, desc: 'Имя пользователя', required: true }
      expose :surname, documentation: { type: String, desc: 'Фамилия пользователя', required: true }
      expose :patronymic, documentation: { type: String, desc: 'Отчество пользователя', required: true }
    end
  end
end

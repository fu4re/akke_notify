module API
  module V1
    class UsersApi < API::V1::Base
      resource :users do
        desc 'Список пользователей'
        get do
          users = User.all
          present users, with: API::Entities::User
        end

        route_param :name, type: String, requirements: { name: /[\w\-\.]*/ } do
          desc 'Информация о пользователе'
          get do
            user = User.find_by_name(params[:name])
            present user, with: API::Entities::User
          end

          desc 'Редактирование пользователя'
          params do
            optional :all, using: API::Entities::User.for_update
          end
          patch do
            # TODO: CRUD services
            # user = User.find_by_name(params[:name])
            # present user.update(params), with: API::Entities::User
          end
        end
      end
    end
  end
end

Rails.application.routes.draw do
  mount API::Base => '/'
  mount GrapeSwaggerRails::Engine => '/swagger'

  # root to: 'visitors#index'
end

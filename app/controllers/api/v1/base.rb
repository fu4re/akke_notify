module API
  module V1
    class Base < Grape::API
      use GrapeLogging::Middleware::RequestLogger,
          instrumentation_key: 'grape_base_logs',
          formatter: GrapeLogging::Formatters::Default.new,
          include: [
            GrapeLogging::Loggers::Response.new,
            GrapeLogging::Loggers::FilterParameters.new
          ]

      version 'v1', using: :path
      format :json

      # Mount all dependencies
      mount API::V1::UsersApi
    end
  end
end

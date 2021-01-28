module API
  module Entities
    class Base < Grape::Entity
      root :data, :data

      # подготоваливает документацию для фильтрации
      def self.for_filter(include: documentation.keys, except: %i[id created_at updated_at deleted_at], delete: %i[required is_array], allow_blank: false)
        documentation.slice(*include).except(*except).map do |k, v|
          [k, v.except(*delete).merge({ allow_blank: allow_blank })]
        end.to_h
      end

      # подготавливает документацию для создания объекта
      def self.for_create(include: documentation.keys, except: %i[id created_at updated_at deleted_at], delete: %i[required is_array], allow_blank: false)
        documentation.slice(*include).except(*except).map do |k, v|
          [k, v.except(*delete).merge({ allow_blank: allow_blank })]
        end.to_h
      end

      # подготавливает документацию для изменения объекта
      def self.for_update(include: documentation.keys, except: %i[id created_at updated_at deleted_at], delete: %i[required is_array], allow_blank: false)
        documentation.slice(*include).except(*except).map do |k, v|
          [k, v.except(*delete).merge({ allow_blank: allow_blank })]
        end.to_h
      end
    end
  end
end

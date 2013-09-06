require 'factory_girl'

module FactoryGirl
  module RSpec
    module With
      def with(name, *args)
        let(name) { ::FactoryGirl.create(name, *args) }
      end

      def with!(name, *args)
        let!(name) { ::FactoryGirl.create(name, *args) }
      end
    end
  end
end

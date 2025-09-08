module Placeholder
  extend ActiveSupport::Concern

  class_methods do
    def image_generator(height:, width:)
      # via.dummyimage.com expects WIDTHxHEIGHT
      "https://via.dummyimage.com/#{width}x#{height}"
    end
  end
end
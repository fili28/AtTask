module Attask
  module API
    class Note < Base

      api_model Attask::Note

      include Attask::Behavior::Default


    end
  end
end
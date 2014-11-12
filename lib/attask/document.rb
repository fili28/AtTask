module Attask


  # The model that contains information about a project
  #
  # == Fields
  # [+name+] (REQUIRED) the name of the project

  class Document < Hashie::Mash
    include Attask::Model

    api_path '/document'


  end

end
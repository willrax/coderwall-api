require 'open-uri'
require 'json'

module Coderwall
  
  # define profile methods
  class Client
      
      @@base_url = "http://coderwall.com/"
    
      def profile(username)
        begin
         hash = JSON.load(open(url_to_get(username)))
         Coderwall::Hash.new(hash)
        rescue OpenURI::HTTPError
          console.log "Invalid username: #{username}"
        end
      end
    
      private
    
      def url_to_get(username)
        url = URI.escape("#{@@base_url}#{username}.json")
        return url
      end
    
  end
  
end
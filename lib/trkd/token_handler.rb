# Make this a singleton so token is the same across all Service subclasses
module TRKD
  module TokenHandler
    extend self

    def token
      reset_token if new_token_required?
      @token.value
    end

    private
    def new_token_required?
      @token.nil? || @token.expired?
    end

    def reset_token
      @token = Token.new
    end
  end
end


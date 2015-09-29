class TestController < ApplicationController
    def test
        @colleges = College.all
    end
end


class TestController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def test
        @colleges = College.all
    end
    def whatup
        @college = College.find_by(name: params[:name])
    end
    # private 
    #     def college_params
    #         params.require(:college).permit(:name)
    #     end

end


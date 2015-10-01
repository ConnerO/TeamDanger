class TestController < ApplicationController
    # skip_before_action :verify_authenticity_token
    def test
        @colleges = College.all
        @check_list = CheckList.new
        current_user
    end

    def create
        @check_list = CheckList.new(check_list_params)

        if @check_list.save
            redirect_to @check_list
        end
    end

    def whatup
        @college = College.find_by(name: params[:name])
    end

    private

        def check_list_params
            params.require(:check_list).permit(:deadline, :transcript, :essay, :sat, :act, :application, :tour_date, :early_acceptance, :ranking, :rec_letters, :user_id, :college_id)
    end

    private

        def require_login
            unless current_user
                redirect_to root_url, notice: 'You need to be logged in to post!'
            end
    end
    # private 
    #     def college_params
    #         params.require(:college).permit(:name)
    #     end

end


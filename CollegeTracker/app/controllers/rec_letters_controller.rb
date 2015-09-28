class RecLettersController < ApplicationController
before_action :movie_params, :only =>[:create,:update]

def index
	@rec_letters = RecLetter.all
end

def show
 	@rec_letter = RecLetter.find(params[:id])
end

def new
	@rec_letter = RecLetter.new
end

def create
	@rec_letter = RecLetter.new(rec_letter_params)

	if @rec_letter.save
		redirect_to @rec_letter
	end
end

def edit
	@rec_letter = RecLetter.find(params[:id])
end

def update
	@rec_letter = RecLetter.find(params[:id])

	if @rec_letters.update(rec_letter_params)
		redirect_to @rec_letter
	end
end

def destroy
	@rec_letter = RecLetter.find(params[:id])
	@rec_letter.destroy
	redirect_to '/rec_leters'
end

private

def rec_letter_params
	params.require(:rec_letter).permit(:name, :title, :complete)
end

end

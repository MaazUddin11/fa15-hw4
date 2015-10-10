class DogsController < ApplicationController

	def indexD
		@dogs = Dog.all
	end

	def newD
		@dog = Dog.new
	end

	def createD
    @dog = Dog.create(dog_params)
    if @dog.save #If saving the user was successful
      redirect_to @dog #Go to the show view of the dog
    else
      render "new" #Go to the new view for the dog
    end
  end

  def showD
  	@dog = Dog.find(params[:id])
  end

  private

  def dog_params
  	params.require(:dog).permit(:name, :age)
  end
end
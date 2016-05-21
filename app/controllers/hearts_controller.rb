class HeartsController < ApplicationController
	 def create
    @heart = Heart.new(heart_params)

          if @heart.save
        redirect_to @heart.post, notice: 'Hearted that bloodclaat post!'
          else
        redirect_to root_url, notice: 'Had a problem creating the heart' 
           end
    end
  
  private
        # Never trust parameters from the scary internet, only allow the white list through.
    def heart_params
      params.require(:heart).permit(:post_id)
    end
end


class AmvController < ApplicationController
	def index
		@amv_new = Amv.new
		@amvs = Amv.all
	end
	
	def edit
		@amv = Amv.find(params[:id])
	end

	def new
		@amv = Amv.new
	end
	
	def create
		@amv = Amv.create(amv_params)
 
		respond_to do |format|
			if @amv.save
				format.html { redirect_to @amv, notice: 'User was successfully created.' }
				format.js   {}
				format.json { render json: @amv, status: :created, location: @amv }
			else
				format.html { render action: "new" }
				format.json { render json: @amv.errors, status: :unprocessable_entity }
			end
		end
	end
	
	def update
		@amv = Amv.find(params[:id])
 
		if @amv.update(amv_params)
			redirect_to @amv
		else
			render 'edit'
		end
	end
	
	def destroy
		@amv = Amv.find(params[:id])
		@amv.destroy
		redirect_to amv_index_path
	end
	
	private
		def amv_params
			params.require(:amv).permit(:title, :link)
		end
end

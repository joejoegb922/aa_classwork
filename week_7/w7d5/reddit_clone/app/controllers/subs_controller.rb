class SubsController < ApplicationController
    def show
        @sub = Sub.find_by(id: params[:id])
        render :show
    end

    def new
        @sub = Sub.new
        render :new
    end

    def create
        @sub = Sub.new(sub_params)
        if @sub.save
            redirect_to sub_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages 
            render :new
        end

    end

    def edit
        @sub = Sub.find_by(id: params[:id])
        render :edit
    end

    def update
        @sub = Sub.find_by(id: params[:id])
        if @sub.update(sub_params)
            redirect_to sub_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages 
            render :edit
        end
    end

    def destroy
        @sub = Sub.find_by(id: params[:id])
        if @sub 
            @sub.destroy
            redirect_to subs_url
        else
            render json: { errors: "No sub with that ID" } 
        end
    end

    private
    def sub_params
        params.require(:sub).permit(:title, :url, :content)
    end
end

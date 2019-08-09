class GossipsController < ApplicationController
    
    def new
        @gossip = Gossip.new
    end
    
    def create
        gossip = Gossip.create(gossip_params)
            redirect_to static_pages_index_path
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end 

    def show
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        @gossip.update(gossip_params)
            redirect_to static_pages_index_path
    end

    private
        def gossip_params
            params.require(:gossip).permit(:title, :content)
        end
end
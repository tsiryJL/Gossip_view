class GossipsController < ApplicationController
    
    def edit
        @gossip = Gossip.find(params[:id])
    end 

    def update
        @gossip = Gossip.find(params[:id])
        gossip_params = params.require(:gossip).permit(:title, :content).inspect
        @gossip.update(gossip_params)
            redirect_to index_path
    end
end
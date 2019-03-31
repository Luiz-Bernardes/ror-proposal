class Api::ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :update, :destroy]

  def index
    @proposals = Proposal.all
  end

  def show
  end

  def create
    @proposal = Proposal.new(proposal_params)
    if @proposal.save
      head :created
    else
      render json: @proposal.errors, status: :unprocessable_entity
    end
  end

  def update
    if @proposal.update(proposal_params)
      head :no_content
    else
      render json: @proposal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @proposal.destroy
    head :no_content
  end

  private
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    def proposal_params
      params.require(:proposal).permit(:name, :description, :value, :date_begin, :date_end, :city)
    end
end

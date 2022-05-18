# frozen_string_literal: true

class TransportersController < ApplicationController
  before_action :set_transporter, only: %i[show]

  def index
    @transporters = Transporter.all

    flash.now[:notice] = 'Não existem transportadoras cadastradas.' if @transporters.empty?
  end

  def show; end

  def new
    @transporter = Transporter.new
  end

  def create
    @transporter = Transporter.new(transporter_params)

    if @transporter.save
      redirect_to @transporter, notice: 'Transportadora cadastrada com sucesso!'
    else
      flash.now[notice] = 'Transportadora não cadastrada.'

      render :new
    end
  end

  private

  def transporter_params
    params.require(:transporter).permit(
      :corporate_name,
      :brand_name,
      :domain,
      :registration_number,
      :full_address
    )
  end

  def set_transporter
    @transporter = Transporter.find(params[:id])
  end
end

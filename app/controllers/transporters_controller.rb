# frozen_string_literal: true

class TransportersController < ApplicationController
  before_action :set_transporter, only: %i[show edit update]

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

  def edit; end

  def update
    if @transporter.update(transporter_params)
      redirect_to @transporter, notice: 'Transportadora atualizada com sucesso!'
    else
      flash.now[notice] = 'Não foi possivel atualizar a transportadora.'

      render :edit
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

# frozen_string_literal: true

class TransportersController < ApplicationController
  before_action :set_transporter, only: %i[show]

  def show; end
  private

  def set_transporter
    @transporter = Transporter.find(params[:id])
  end
end

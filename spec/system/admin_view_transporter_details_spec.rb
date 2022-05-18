# frozen_string_literal: true

require 'rails_helper'

describe 'Admin view transporter details' do
  it 'Must see additional information' do
    transporter = create(:transporter)
    visit transporter_path(transporter.id)

    expect(page).to have_content "Transportadora #{transporter.brand_name}"
    expect(page).to have_content transporter.corporate_name
    expect(page).to have_content "CNPJ: #{transporter.registration_number}"
    expect(page).to have_content "Endereço: #{transporter.full_address}"
    expect(page).to have_content "Domínio: #{transporter.domain}"
  end
end

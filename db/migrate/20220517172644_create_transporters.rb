# frozen_string_literal: true

class CreateTransporters < ActiveRecord::Migration[7.0]
  def change
    create_table :transporters do |t|
      t.string :corporate_name, index: { unique: true, name: 'unique_corporate_name' }, null: false
      t.string :brand_name, index: { unique: true, name: 'unique_brand_name' }, null: false
      t.string :domain, index: { unique: true, name: 'unique_domain' }, null: false
      t.string :registration_number, index: { unique: true, name: 'unique_registration_number' }, null: false
      t.string :full_address, index: { unique: true, name: 'unique_full_address' }, null: false

      t.timestamps
    end
  end
end

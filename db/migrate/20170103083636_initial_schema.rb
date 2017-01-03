class InitialSchema < ActiveRecord::Migration
  def change

    create_table :courses do |t|
      t.string :name
      t.text   :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :hole_count
  end

    create_table :reviews do |t|
      t.string  :comment
      t.integer :rating
    end
  end
end

class CreateProductLivings < ActiveRecord::Migration
  def change
    create_table :product_livings do |t|

      t.timestamps
    end
  end
end

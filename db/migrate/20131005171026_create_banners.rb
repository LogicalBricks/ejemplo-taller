class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :archivo
      t.string :url
      t.references :cliente, index: true

      t.timestamps
    end
  end
end

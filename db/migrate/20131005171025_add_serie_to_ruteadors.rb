class AddSerieToRuteadors < ActiveRecord::Migration
  def change
    add_column :ruteadors, :serie, :string
  end
end

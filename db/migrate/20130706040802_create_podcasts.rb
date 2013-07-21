class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :titulo
      t.text :texto
      t.string :soundcloud

      t.timestamps
    end
  end
end

class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :titulo
      t.text :texto
      t.string :image
      t.date :data

      t.timestamps
    end
  end
end

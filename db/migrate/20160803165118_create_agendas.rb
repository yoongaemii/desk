class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.string :color #to distinguish agendas easily
      
      t.timestamps null: false
    end
  end
end
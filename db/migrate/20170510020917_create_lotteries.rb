class CreateLotteries < ActiveRecord::Migration
  def change
    create_table :lotteries do |t|


      t.string :my_lotto
      t.timestamps null: false
    end
  end
end

class AddStartTimeToTrailer < ActiveRecord::Migration
  def change
    add_column :trailers, :start_time, :integer
  end
end

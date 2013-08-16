class AddAnswerToTrailer < ActiveRecord::Migration
  def change
    add_column :trailers, :answer0, :string
    add_column :trailers, :answer1, :string
    add_column :trailers, :answer2, :string
    add_column :trailers, :answer3, :string
  end
end

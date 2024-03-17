# == Schema Information
#
# Table name: shows
#
#  id         :bigint           not null, primary key
#  venue      :string           not null
#  location   :string           not null
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Show < ApplicationRecord
    validates :venue, :location, :date, presence: true
end

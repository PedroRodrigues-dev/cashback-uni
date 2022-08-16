class HistoryPoint < ApplicationRecord
  belongs_to :store
  belongs_to :score
end

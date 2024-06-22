class Task < ApplicationRecord
  belongs_to :user
  enum status: { Backlog: 0, In_progress: 1, Done: 2 }
end

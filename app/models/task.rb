class Task < ApplicationRecord
  belongs_to :user
  enum status: { Backlog: 0, In_progress: 1, Done: 2 }

  def badge_color
    case status
    when 'In_progress'
      'secondary'
    when 'Backlog'
      'info'
    when 'Done'
      'success'
    end
  end
end

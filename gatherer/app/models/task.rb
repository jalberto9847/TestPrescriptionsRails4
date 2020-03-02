class Task < ApplicationRecord

  belongs_to :project

  def mark_completed(date = nil)
    self.completed_at = (date || Time.current)
  end

  def complete?
    completed_at.present?
  end

  def part_of_velocity?
    return false unless completed?
    completed_at > Projec.velocity_length_in_days.days.ago
  end

  def points_toward_velocity
    if part_of_velocity? then size else 0 end
  end
end

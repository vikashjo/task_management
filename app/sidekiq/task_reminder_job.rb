class TaskReminderJob
  include Sidekiq::Job

  def perform(*args)
    def perform
      Task.where("deadline >= ? AND deadline < ?", Time.now + 1.day, Time.now + 2.days).each do |task|
        TaskReminderMailer.task_reminder_email(task.user, task).deliver_now
      end
      Task.where("deadline >= ? AND deadline < ?", Time.now + 1.hour, Time.now + 2.hours).each do |task|
        TaskReminderMailer.task_reminder_email(task.user, task).deliver_now
      end
    end
  end
end

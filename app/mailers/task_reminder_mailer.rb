class TaskReminderMailer < ApplicationMailer
  def task_reminder_email(user, task)
    @user = user
    @task = task
    mail(
      to: @user.email,
      from: 'vikashjoshi431@gmail.com',
      subject: 'Your tasks deadline will end soon') do |format|
      format.html { render 'task_reminder_mailer' }
    end
  end
end
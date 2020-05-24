class DeleteMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_mail(agenda)
    @agenda = agenda
    @members = @agenda.team.members
    @members.each do |m|
      mail to: m.email, subject: "agendaを削除しました"
    end
  end
end

class NoticeMailer < ApplicationMailer
    default to: ENV['H_MAIL']

    def notice(attend)
        @attend = attend
        mail(subject: "#{attend.name}さんが出欠を入力しました！")
    end
end

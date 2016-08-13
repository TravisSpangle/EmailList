require "EmailList/version"

module EmailList
  def self.uniq(emails)
    registry    = {}
    uniq_emails = []

    emails.each do |email|
      if registry[email].nil?
        registry[email] = true
        uniq_emails << email
      end
    end

    uniq_emails
  end
end

require 'spec_helper'

describe EmailList do
  let(:sample_emails) { %w(one@test.com two@test.com two@test.com three@test.com) }

  def timed(cleaning_emails)
    time_start = Time.now
    cleaning_emails.call
    time_end = Time.now

    time_end - time_start
  end

  it 'has a version number' do
    expect(EmailList::VERSION).not_to be nil
  end

  it 'accepts a list of emails as arrays and passes back an array' do
    expect(EmailList.uniq(sample_emails).class).to eq(Array)
  end

  it 'provides a list of uniq emails in the original order it takes them.' do
    expect(EmailList.uniq(sample_emails)).to eq(%w(one@test.com two@test.com three@test.com))
  end

  it 'processes 100,000 emails under 1 second.' do
    amount = 100_000
    emails = []
    (amount / 2).times do |n|
      emails << "test_#{n}_@email_list.com"
    end

    # size doesn't matter
    expect(EmailList.uniq(emails)).to eq(emails)

    dirty_emails = proc do
      EmailList.uniq((emails + emails).shuffle)
    end

    expect(timed(dirty_emails)).to be < 1
  end
end

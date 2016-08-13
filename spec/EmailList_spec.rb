require 'spec_helper'

describe EmailList do
  let(:sample_emails) { %w(one@test.com two@test.com two@test.com three@test.com) }

  it 'has a version number' do
    expect(EmailList::VERSION).not_to be nil
  end

  it 'accepts a list of emails as arrays and passes back an array' do
    expect(EmailList.uniq(sample_emails).class).to eq(Array)
  end

  it 'provides a list of uniq emails in the original order it takes them.' do
    expect(EmailList.uniq(sample_emails)).to eq(%w(one@test.com two@test.com three@test.com))
  end

  # it 'processes 100,000 emails, where 50% are duplicated, and unsorted in under 1 second.'
end

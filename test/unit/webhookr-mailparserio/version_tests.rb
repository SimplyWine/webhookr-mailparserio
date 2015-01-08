$: << File.join(File.dirname(__FILE__), %w{ .. .. })
require 'test_helper'

describe Webhookr::Mailparserio do
  it "must be defined" do
    Webhookr::Mailparserio::VERSION.wont_be_nil
  end
end
require "thor"
require "customer_test"

module CustomerTest
  class CLI < Thor
    desc "perform", "Print out a number chain"
    method_option :integer, aliases: "-i"
    def perform
      puts CustomerTest::ChainPrinter.perform(options[:integer])
    end
  end
end

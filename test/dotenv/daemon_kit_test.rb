require "minitest/autorun"
require "minitest/spec"
require "minitest/pride"

require "dotenv"
require "daemon_kit"

$:.unshift File.expand_path "../../../lib", __FILE__ unless
  $:.include? File.expand_path "../../../lib", __FILE__

Dir.chdir("./test")
module Dotenv
  module DaemonKit
    ::DAEMON_ENV = "omglol"
    require "dotenv/daemon_kit"

    describe Dotenv::DaemonKit do
      it "loads .env variables respecting DaemonKit.env value" do
        ENV["OMGLOL_ENV_VAR"].must_be :==, "yes, I'm loaded (omglol)"
      end

      it "loads the 'default' .env vars besides the environment specifics" do
        ENV["JUST_A_DEFAULT_ENV_VAR"].must_be :==, "ok, I'm loaded"
      end
    end
  end
end

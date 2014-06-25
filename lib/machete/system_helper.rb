module Machete
  module SystemHelper
    def self.run_cmd(cmd, silent=false)
      Machete.logger.info "$ #{cmd}" unless silent
      result = `#{cmd}`
      Machete.logger.info result unless silent
      result
    end
  end
end

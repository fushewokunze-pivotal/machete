# encoding: utf-8
require 'spec_helper'

module Machete
  module CF
    describe DeleteApp do
      let(:app) { double(:app, name: 'app_name') }
      subject(:delete_app) { DeleteApp.new }

      before do
        allow(SystemHelper)
          .to receive(:run_cmd)
          .with('cf delete -f -r app_name')
      end

      specify do
        expect(app).to receive(:end_logs)
        delete_app.execute(app)
        expect(SystemHelper).to have_received(:run_cmd)
      end
    end
  end
end

# frozen_string_literal: true

require 'thor'

module UpcaseScraper
  module CommandLine
    class Weeklies < Thor
      DOWNLOAD_INSTRUCTION = %(DOWNLOAD_INSTRUCTION).freeze
      DOWNLOAD_DETAILS = %(DOWNLOAD_DETAILS).freeze

      desc DOWNLOAD_INSTRUCTION, DOWNLOAD_DETAILS
      options username: :required, password: :required
      def download
        p 'downloading...'
      end
    end
  end
end

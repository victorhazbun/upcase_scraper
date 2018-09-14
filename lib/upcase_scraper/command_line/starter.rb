# frozen_string_literal: true

require 'thor'
require 'upcase_scraper/command_line/weeklies'

module UpcaseScraper
  module CommandLine
    class Starter < Thor
      WEEKLY_INSTRUCTION = %(WEEKLY_INSTRUCTION).freeze
      WEEKLY_DETAILS = %(WEEKLY_DETAILS).freeze
      DECKS_INSTRUCTION = %(DECKS_INSTRUCTION).freeze
      DECKS_DETAILS = %(DECKS_DETAILS)

      desc WEEKLY_INSTRUCTION, WEEKLY_DETAILS
      subcommand 'weekly', UpcaseScraper::CommandLine::Weeklies

      # TODO
      # desc DECKS_INSTRUCTION, DECKS_DETAILS
      # subcommand 'decks', UpcaseScraper::CommandLine::Decks
    end
  end
end

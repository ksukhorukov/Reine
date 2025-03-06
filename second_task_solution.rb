#!/usr/bin/env ruby

require 'pp'
require 'pry'

class SecondTaskSolution 
	INPUT_FILE = 'input.txt'
	OUTPUT_FILE = 'output.txt'

	attr_reader :input_data, :word, :dictionary

	def initialize
		parse_input_values
	end

	private

	def read_input_values
		@input_data ||= File.readlines(INPUT_FILE)
	end

	def parse_input_values
		read_input_values
		get_dictionary
		get_word
	end

	def get_word
		@word ||= input_data&.first&.chomp
	end

	def get_dictionary
		@dictionary ||= input_data&.last&.split(',')
	end
end

SecondTaskSolution.new
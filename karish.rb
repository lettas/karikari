#!/usr/bin/env ruby
# coding: utf-8
require 'readline'

ngwords = %w(karikari かりかり カリカリ メリノリ ﾒﾘﾉﾘ)

while line = Readline.readline("kari@kari:#{Dir::pwd} $ ", true)
  begin
    puts '喧嘩売ってんのか' if ngwords.any?{|ngword| line.include?(ngword)}
    puts `#{line}`
  rescue => e
  end
end

#!/usr/bin/env ruby
# coding: utf-8

ngwords = %w(karikari かりかり カリカリ メリノリ ﾒﾘﾉﾘ)

while (print '$ '; line = gets)
  begin
    puts '喧嘩売ってんのか' if ngwords.any?{|ngword| line.include?(ngword)}
    puts `#{line}`
  rescue => e
  end
end

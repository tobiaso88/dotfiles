#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'

@token = 'xoxp-6448058903-6448096468-429493833856-67388cc9bc22ebdbc7a3fc202c76e282'

def list_files
  ts_to = (Time.now - 30 * 24 * 60 * 60).to_i # 30 days ago
  params = {
    token: @token,
    ts_to: ts_to,
    count: 1000
  }
  uri = URI.parse('https://slack.com/api/files.list')
  uri.query = URI.encode_www_form(params)
  response = Net::HTTP.get_response(uri)
  JSON.parse(response.body)['files']
end

def delete_files(file_ids)
  file_ids.each do |file_id|
    params = {
      token: @token,
      file: file_id
    }
    uri = URI.parse('https://slack.com/api/files.delete')
    uri.query = URI.encode_www_form(params)
    response = Net::HTTP.get_response(uri)
    p "#{file_id}: #{JSON.parse(response.body)['ok']}"
  end
end

p 'Deleting files...'
files = list_files
file_ids = files.map { |f| f['id'] }
delete_files(file_ids)
p 'Done!'

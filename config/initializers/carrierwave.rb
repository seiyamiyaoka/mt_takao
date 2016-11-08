CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['S3_ACCESS_KEY'],
    aws_secret_access_key: ENV['S3_SECRET_KEY'],
    region: 'ap-northeast-1'
  }

  config.fog_directory = ENV['S3_DIRECTORY']
  config.asset_host = ENV['S3_ENDPOINT'] 
end
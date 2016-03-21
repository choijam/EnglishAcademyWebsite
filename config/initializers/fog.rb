CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI3K2SHEUAJQRDBDQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2'               # optional, defaults to 'us-east-1'
  
  }
  config.fog_directory  = 'highoedae'
end

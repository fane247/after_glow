CarrierWave.configure do |config|

  config.fog_use_ssl_for_aws = false

  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV["AWSAccessKeyId"],
      :aws_secret_access_key  => ENV["AWSSecretKey"],
      :region                 => 'eu-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }

  config.fog_directory  = "faneafterglow"
  config.fog_public = true

end


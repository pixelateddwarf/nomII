# config/initializers/carrierwave.rb
 
CarrierWave.configure do |config|
config.fog_credentials = {
  :provider              => 'AWS',                                            # required
  :aws_access_key_id     => ENV["AKIAITGIVOCAL3SYGBKQ"],                      # required
  :aws_secret_access_key => ENV["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"]   # required
}
config.fog_directory = ENV["nomster2"]                                        # required
end 
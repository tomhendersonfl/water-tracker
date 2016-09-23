if Rails.env.production?
  # CarrierWave.configure do |config|
  #   config.aws_credentials = {
  #     access_key_id:     ENV["AWS_KEY_ID"],
  #     secret_access_key: ENV["AWS_SECRET"],
  #     region:            ENV["AWS_REGION"] # Required
  #   }
  #   config.storage = :aws
  #   config.aws_bucket  = ENV["BUCKET_NAME"]
  #   config.aws_acl     = "public-read"
  # end

  CarrierWave.configure do |config|
    config.aws_credentials = {
      access_key_id:     "AKIAJUM7GEJRVBSFYHYQ",
      secret_access_key: "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",
      region:            "us-west-2"
    }
    config.storage = :aws
    config.aws_bucket  = "ithriveactionstepmultimedia2016"
    config.aws_acl     = "public-read"
  end
  
end

if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

if Rails.env.development?
  CarrierWave.configure do |config|
    config.aws_credentials = {
      access_key_id:     "AKIAJUM7GEJRVBSFYHYQ",
      secret_access_key: "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",
      region:            "us-west-2"
    }
    config.storage = :aws
    config.aws_bucket  = "ithriveactionstepmultimedia2016"
    config.aws_acl     = "public-read"
  end
end

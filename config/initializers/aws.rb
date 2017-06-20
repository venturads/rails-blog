Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new(ENV['AKIAJ6UN355TED5ETH3A'], ENV['cYMDACaeWrTkXPfIQmjaaFw9cx5p8irGEkgvYOAQ']),
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['rails-s3-test'])
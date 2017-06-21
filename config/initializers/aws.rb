Aws.config.update({
  region: 's3.us-west-2',
  credentials: Aws::Credentials.new(ENV['AKIAIKC6VFQVRSHJYDYA'], ENV['+wetsx8MiJkzr7MsyGYCL8IZtoZUU1+J3FcdOKQq']),
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['rails-s3-test'])
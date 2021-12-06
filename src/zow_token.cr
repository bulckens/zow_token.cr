require "digest"
require "./zow_token/**"

struct ZowToken
  def self.generate(
    uri : String,
    secret : String,
    timestamp : Int64 = Time.local.to_unix_ms
  )
    Digest::SHA256.hexdigest("#{secret}---#{timestamp}---#{uri}") + timestamp.to_s(16)
  end
end

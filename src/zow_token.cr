require "openssl"
require "./zow_token/**"

struct ZowToken
  def self.generate(
    uri : String,
    secret : String,
    timestamp : Int64 = Time.local.to_unix_ms
  )
    OpenSSL::Digest.new("SHA256")
      .update("#{secret}---#{timestamp}---#{uri}")
      .hexdigest + timestamp.to_s(16)
  end
end

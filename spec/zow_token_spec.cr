require "./spec_helper"

describe ZowToken do
  describe ".generate" do
    it "returns a new token for the given parameters" do
      token = ZowToken.generate("/some/path.json", "supersecret", 1586622186786)
      token.should eq("78ecc48df0741885fd20380ae5b118fe9b155ad123db4fd9acd525d2ed3196a81716a0d4522")
    end

    it "ensures a default timestamp" do
      token = ZowToken.generate("/some/path.json", "supersecret")
      token.should match(/^[a-z0-9]{75}$/)
    end
  end
end

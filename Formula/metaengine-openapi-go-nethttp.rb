# Homebrew formula for the MetaEngine OpenAPI -> Go (net/http) generator.
#
# This file is a TEMPLATE. The go-publish pipeline renders the __TOKENS__ at release time and
# commits the result to the meta-engine/homebrew-tap repository, so users can:
#
#   brew install meta-engine/tap/metaengine-openapi-go-nethttp
#
class MetaengineOpenapiGoNethttp < Formula
  desc "Generate Go net/http clients and models from OpenAPI specifications"
  homepage "https://github.com/meta-engine/metaengine-openapi-go-nethttp"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/meta-engine/metaengine-openapi-go-nethttp/releases/download/v1.0.0/metaengine-openapi-go-nethttp_darwin_arm64.tar.gz"
      sha256 "09de6499896b22c666a65c6d0dd5eda74166c5002f95013575b4fd070005ff29"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-openapi-go-nethttp/releases/download/v1.0.0/metaengine-openapi-go-nethttp_darwin_amd64.tar.gz"
      sha256 "fd107b68347f013a14c80444d54a961a28e26df7d4cc154c2015fec305256a32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meta-engine/metaengine-openapi-go-nethttp/releases/download/v1.0.0/metaengine-openapi-go-nethttp_linux_arm64.tar.gz"
      sha256 "196b4a1463e7ac1f69892a6fe5003ff192f5e38f6b027bdcce80ba5945dd430d"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-openapi-go-nethttp/releases/download/v1.0.0/metaengine-openapi-go-nethttp_linux_amd64.tar.gz"
      sha256 "1dc2b2c239514522545f9bdc7e4507212bcf287f0fc95c083cf7700d7136d608"
    end
  end

  def install
    bin.install "metaengine-openapi-go-nethttp"
  end

  test do
    assert_match "OpenAPI", shell_output("#{bin}/metaengine-openapi-go-nethttp --help")
  end
end

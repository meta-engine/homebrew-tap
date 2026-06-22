# Homebrew formula for the MetaEngine Protobuf -> Go (net/http) generator.
#
# This file is a TEMPLATE. The go-publish pipeline renders the version + sha256 placeholders at
# release time and commits the result to the meta-engine/homebrew-tap repository, so users can:
#
#   brew install meta-engine/tap/metaengine-protobuf-go-nethttp
#
class MetaengineProtobufGoNethttp < Formula
  desc "Generate Go net/http clients and models from Protocol Buffers definitions"
  homepage "https://github.com/meta-engine/metaengine-protobuf-go-nethttp"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/meta-engine/metaengine-protobuf-go-nethttp/releases/download/v1.0.0/metaengine-protobuf-go-nethttp_darwin_arm64.tar.gz"
      sha256 "11c4cdbff52e98ebb769131c134cfefd0a161d701e2465d15b4509ce68e3c183"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-protobuf-go-nethttp/releases/download/v1.0.0/metaengine-protobuf-go-nethttp_darwin_amd64.tar.gz"
      sha256 "17a3d955b435a8394279bfda1327a2166d368f355cfd2bb4fdccb8503798fbfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meta-engine/metaengine-protobuf-go-nethttp/releases/download/v1.0.0/metaengine-protobuf-go-nethttp_linux_arm64.tar.gz"
      sha256 "5583d857f673e77eea2fc95615288125ff4883ac43eb020cfa212bfca9b890c1"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-protobuf-go-nethttp/releases/download/v1.0.0/metaengine-protobuf-go-nethttp_linux_amd64.tar.gz"
      sha256 "6c170dbdd8a5a76e4a094e13784b0193467a9d28a4b139588cf7f7a91ef98e8c"
    end
  end

  def install
    bin.install "metaengine-protobuf-go-nethttp"
  end

  test do
    assert_match "Protocol Buffers", shell_output("#{bin}/metaengine-protobuf-go-nethttp --help")
  end
end

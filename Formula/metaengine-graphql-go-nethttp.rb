# Homebrew formula for the MetaEngine GraphQL -> Go (net/http) generator.
#
# This file is a TEMPLATE. The go-publish pipeline renders the version + sha256 placeholders at
# release time and commits the result to the meta-engine/homebrew-tap repository, so users can:
#
#   brew install meta-engine/tap/metaengine-graphql-go-nethttp
#
class MetaengineGraphqlGoNethttp < Formula
  desc "Generate Go net/http clients and models from GraphQL schemas"
  homepage "https://github.com/meta-engine/metaengine-graphql-go-nethttp"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/meta-engine/metaengine-graphql-go-nethttp/releases/download/v1.0.0/metaengine-graphql-go-nethttp_darwin_arm64.tar.gz"
      sha256 "4604b3dbac7955a6b62938b4589fcd3913354f3fc809d4d69a5d0c6bf5451cbd"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-graphql-go-nethttp/releases/download/v1.0.0/metaengine-graphql-go-nethttp_darwin_amd64.tar.gz"
      sha256 "94e5d716abbdd56dd42f2da2a130322f6cd542f2f2c4de172127fa79faa3b82b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/meta-engine/metaengine-graphql-go-nethttp/releases/download/v1.0.0/metaengine-graphql-go-nethttp_linux_arm64.tar.gz"
      sha256 "e597cb9ac73fd12faeea8d9a67b0c508f67aa0649588444fd8e7c48954ab965e"
    end
    on_intel do
      url "https://github.com/meta-engine/metaengine-graphql-go-nethttp/releases/download/v1.0.0/metaengine-graphql-go-nethttp_linux_amd64.tar.gz"
      sha256 "8f7e83ca6576e4254766cb1287cb9a3998c35bdc06e3d3b70704340b46fbabe2"
    end
  end

  def install
    bin.install "metaengine-graphql-go-nethttp"
  end

  test do
    assert_match "GraphQL", shell_output("#{bin}/metaengine-graphql-go-nethttp --help")
  end
end

class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.1/beshik_0.3.1_darwin_arm64.tar.gz"
      sha256 "34291069bbe2f1ed17b455353f7e41774789e4254402ae66ae38988c99bbb06d"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.1/beshik_0.3.1_darwin_amd64.tar.gz"
      sha256 "0fd51b5c1d6b011ba7fa294bafb6026283b13e0b8887b3b87d4e123bd8ab98e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.1/beshik_0.3.1_linux_arm64.tar.gz"
      sha256 "a68f46555ab873df9ae465b435da479e334aac9ee6d76485b7d880a2232dd9be"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.1/beshik_0.3.1_linux_amd64.tar.gz"
      sha256 "04df255b219e4be2ba6ebf4a81a062c51823b5be0e58b42fa3597d6c2dbc80c8"
    end
  end

  def install
    bin.install "beshik"
    generate_completions_from_executable(bin/"beshik", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beshik version")
  end
end

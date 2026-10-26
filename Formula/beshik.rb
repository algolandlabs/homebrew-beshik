class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.0/beshik_0.3.0_darwin_arm64.tar.gz"
      sha256 "0d84a2e13fc53b1ec65ebc89c5c6b4f62abadb68f1024c5430a474cf2195805b"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.0/beshik_0.3.0_darwin_amd64.tar.gz"
      sha256 "9f311506d7387936ec1afa807924207c6fa477fbc339ff3438827f59a66e5921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.0/beshik_0.3.0_linux_arm64.tar.gz"
      sha256 "8c8668bdc9b29e253966d89979ac0cddfbee607512137785ec495b1d68934f3e"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.0/beshik_0.3.0_linux_amd64.tar.gz"
      sha256 "4fd177ca27b20070c2f39ecac552ce7c0017a3469d43d088ac1d6ae16271a6b2"
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

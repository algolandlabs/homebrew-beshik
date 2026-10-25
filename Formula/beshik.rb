class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.3/beshik_0.1.3_darwin_arm64.tar.gz"
      sha256 "53d27ca228b24dda46efa236ea152b6d4eb3e921656dcbc0c2a95275cca926e2"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.3/beshik_0.1.3_darwin_amd64.tar.gz"
      sha256 "251b4f0ca61f7c9a87b558e41780ca10db1d624fc98d644cf837855c7e55f4bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.3/beshik_0.1.3_linux_arm64.tar.gz"
      sha256 "b2c4e1c7c30a43b7ad8670c594f2be5a3500bbe98f3b33583d9d8b0a2534c784"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.3/beshik_0.1.3_linux_amd64.tar.gz"
      sha256 "cfdca7d437911517d36c49db880fb94656f9e71778dfa48960a6caf42d6d56b3"
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

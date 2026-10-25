class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.2.0/beshik_0.2.0_darwin_arm64.tar.gz"
      sha256 "58a0b878da1d28def55317b9178103ba48d92db20e8215883e1bb3b55f66d6e7"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.2.0/beshik_0.2.0_darwin_amd64.tar.gz"
      sha256 "39c2c352e6d337006bb96e24d8cc9221f6cde3ac19cad44456d06e53c1f8102d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.2.0/beshik_0.2.0_linux_arm64.tar.gz"
      sha256 "afb245395bdcd1fd780769a4a0d3217bb584deffc3610942d84022a29b7ea0b8"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.2.0/beshik_0.2.0_linux_amd64.tar.gz"
      sha256 "04f99c214678ef6e24a1f69285af4a694c777707e55b91c00b4505d7656bee20"
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

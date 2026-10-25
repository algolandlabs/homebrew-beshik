class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.2/beshik_0.1.2_darwin_arm64.tar.gz"
      sha256 "c7e5d182e6d0d16052c6ccb48268b0efc5bf01e166de45f230f52ef33c8618a5"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.2/beshik_0.1.2_darwin_amd64.tar.gz"
      sha256 "69763e54d9c1bc8bf4453ef02cbf43a5e49df82732ee6ab86fef92458d49450d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.2/beshik_0.1.2_linux_arm64.tar.gz"
      sha256 "c6d3b28dc79d16d9db4ad153892059189d3e13761c5f39b0c2925475ab738bb8"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.2/beshik_0.1.2_linux_amd64.tar.gz"
      sha256 "a00419a98302d6df7efb0daa780a365f6483145561c5747332b5ce614644ef66"
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

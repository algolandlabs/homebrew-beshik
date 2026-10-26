class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.2/beshik_0.3.2_darwin_arm64.tar.gz"
      sha256 "459132566053abbb0bd87199bd534a40b54b24c93e56cf4033648e519476ca70"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.2/beshik_0.3.2_darwin_amd64.tar.gz"
      sha256 "69f32683443877f923f1bbe84cb3d12b832c7e5e1fa8a69ed15924b3a6ddc328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.2/beshik_0.3.2_linux_arm64.tar.gz"
      sha256 "9586268a2a11b36ec60639892fca40b00dde8200aea1950b34294bf413e4bacf"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.3.2/beshik_0.3.2_linux_amd64.tar.gz"
      sha256 "1fd4fd9c195f69119b3fd1029ac980dfcfaea9296d608c61584f501ae4d16800"
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

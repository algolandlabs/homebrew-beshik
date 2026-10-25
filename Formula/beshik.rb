class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.1/beshik_0.1.1_darwin_arm64.tar.gz"
      sha256 "aed18384a65e584e38a6b6d0aabe8b948d2d8983d3a8426035b3da6b1336f2be"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.1/beshik_0.1.1_darwin_amd64.tar.gz"
      sha256 "99202e98029fa452eec3a87c233eb6c6c925067f79755b1a64c960baf6866af9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.1/beshik_0.1.1_linux_arm64.tar.gz"
      sha256 "a36f59c5b0b734b01f90298148dd01022850753fab12be5245f40656d70f2ee8"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.1/beshik_0.1.1_linux_amd64.tar.gz"
      sha256 "70f09b5284a76c6717498076b14f2b309b7b26d158b4833e3d0660c77c6b17e3"
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

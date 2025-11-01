class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.9/kun_peng-v0.7.9-x86_64-apple-darwin"
      sha256 "12d144f4973d2c667fedf772061c3882ca84bb522a1f13e3bc8252cb5de0d64a"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.9/kun_peng-v0.7.9-aarch64-apple-darwin"
      sha256 "e657107241dba6f87b1f2974098971ca1a965a589f7781a5f51aa97f499c673e"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "kun_peng-#{version}-x86_64-apple-darwin" => "kun_peng"
    else
      bin.install "kun_peng-#{version}-aarch64-apple-darwin" => "kun_peng"
    end
  end

  test do
    system "#{bin}/kun_peng", "--version"
  end
end


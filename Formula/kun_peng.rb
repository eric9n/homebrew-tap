class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.7/kun_peng-v0.7.7-x86_64-apple-darwin"
      sha256 "eda4180fa47ffc643741e9a9422cfc1980bcf0a556172b47b72eca47ab217233"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.7/kun_peng-v0.7.7-aarch64-apple-darwin"
      sha256 "3f8169ee8c5d6346d607dc378a8ee354bc5842862bc98da378aea615536cb5ac"
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


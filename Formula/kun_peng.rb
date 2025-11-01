class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.11/kun_peng-v0.7.11-x86_64-apple-darwin"
      sha256 "d55ef127638ab449403accebeb8844ae4dbfa508734fe5f6a63270dfb80d6fc1"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.11/kun_peng-v0.7.11-aarch64-apple-darwin"
      sha256 "2abce46c523379ad6853327240ddd9446108507aadc83822f8144eb0d43fbb6a"
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


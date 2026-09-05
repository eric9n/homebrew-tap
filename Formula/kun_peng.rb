class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.13/kun_peng-v0.7.13-x86_64-apple-darwin"
      sha256 "d6b2443f685a2f410d037a5a2dc28780c79386979944a2b31185ec2df5f7813b"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.13/kun_peng-v0.7.13-aarch64-apple-darwin"
      sha256 "9f215980faa8aacb350b64460883f61b1cd607cc7bb097493b32a8714aec95cf"
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


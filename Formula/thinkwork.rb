class Thinkwork < Formula
  desc "CLI for deploying and managing Thinkwork agent infrastructure on AWS"
  homepage "https://github.com/thinkwork-ai/thinkwork"
  url "https://registry.npmjs.org/thinkwork-cli/-/thinkwork-cli-0.12.11.tgz"
  sha256 "b20794e0690b539d7d066f06909db2f06447bd1bd3a6768fb053f3ba43931c0f"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/thinkwork"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thinkwork --version")
  end
end

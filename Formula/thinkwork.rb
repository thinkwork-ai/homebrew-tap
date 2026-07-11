class Thinkwork < Formula
  desc "CLI for deploying and managing Thinkwork agent infrastructure on AWS"
  homepage "https://github.com/thinkwork-ai/thinkwork"
  url "https://registry.npmjs.org/thinkwork-cli/-/thinkwork-cli-0.13.0.tgz"
  sha256 "0d4d1fd979c069b91209666d208cc0e754acffc82ae3d858c7909554c9e77bfa"
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

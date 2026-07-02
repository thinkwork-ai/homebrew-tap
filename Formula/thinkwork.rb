class Thinkwork < Formula
  desc "CLI for deploying and managing Thinkwork agent infrastructure on AWS"
  homepage "https://github.com/thinkwork-ai/thinkwork"
  url "https://registry.npmjs.org/thinkwork-cli/-/thinkwork-cli-0.12.15.tgz"
  sha256 "4cf0c7f932020ecda7f0f5f08f16af1fd9d20ea6da86d7e9a1174cba3127e636"
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

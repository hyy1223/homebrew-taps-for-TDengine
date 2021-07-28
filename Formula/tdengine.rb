# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tdengine < Formula
  desc "An open-source big data platform designed and optimized for the Internet of Things (IoT)."
  homepage "https://www.taosdata.com"
  url "https://github.com/taosdata/TDengine/archive/refs/tags/ver-2.1.5.0.tar.gz"
  sha256 "b5688928cde89c2a8bf315d11e1368843ea7d7d69c91ba1c95a5760e7b8bfb1d"
  license "AGPL-3.0"

  depends_on "cmake" => :build

  def install
  system "cmake"
  system "make"
  bin.install "bin/taos"
  bin.install "bin/taosd"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test TDengine`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
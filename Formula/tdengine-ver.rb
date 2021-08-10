# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TdengineVer < Formula
  desc "An open-source big data platform designed and optimized for the Internet of Things (IoT)."
  homepage "https://www.taosdata.com"
  url "https://raw.githubusercontent.com/hyy1223/homebrew-taps-for-TDengine/main/Download/TDengine-ver-2.1.5.0.tar.gz"
  sha256 "aeb95aa9adf6f9fdc8f24e2e5885f149bd68c5d454f7f99feeb80515739fab7e"
  license "AGPL-3.0"


  depends_on "cmake" => :build

 def install
   
     mkdir "debug" do
     system "cmake", "..", *std_cmake_args
     system "cmake","--build","."
     system "make"
     system "make","install"
     end
 end

 test do
   # `test do` will create, run in and delete a temporary directory.
   #
   # This test will fail and we won't accept that! For Homebrew/homebrew-core
   # this will need to be a test that verifies the functionality of the
   # software. Run the test with `brew test TDengine-ver`. Options passed
   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
   #
   # The installed folder is not in the path, so use the entire path to any
   # executables being tested: `system "#{bin}/program", "do", "something"`.
   system "false"
 end
end

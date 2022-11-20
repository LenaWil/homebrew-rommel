class Apfsclonechecker < Formula
    desc "Utility to check if two files are clones in macOS APFS."
    homepage "https://github.com/dyorgio/apfs-clone-checker"
    url "https://github.com/dyorgio/apfs-clone-checker/archive/f7e6116fcf30ed51358ddd9edba6bb8327e61d17.tar.gz"
    version "0.0.6"
  
    def install
      system "cc", "clone_checker.c", "-O3", "-o", "clone_checker"
      bin.install "./clone_checker" => "clone_checker"
    end
  
    test do
    end
  end
  
class TreeSitterPlusPlus < Formula
  desc "C++ bindings for Tree-sitter"
  homepage "https://github.com/Symbitic/TreeSitterPlusPlus"
  url "https://github.com/Symbitic/TreeSitterPlusPlus/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "4c76cfb31a0e3fe2210c6fcae3e11b7add06f6d0e81d4f5edddab268f62b6bb7"
  license "MIT"
  head "https://github.com/Symbitic/TreeSitterPlusPlus.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-B", "build", "-S", ".", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_predicate lib/"cmake/tree-sitter/tree-sitter-config.cmake", :exist?
  end
end

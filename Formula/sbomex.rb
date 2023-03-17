# Copyright 2023 Interlynk.io
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file was generated by GoReleaser. DO NOT EDIT.
class Sbomex < Formula
  desc "sbomex is a command line utility to help query and pull from Interlynk public SBOM"
  homepage "https://github.com/interlynk-io/sbomex"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.2/sbomex-darwin-amd64", :using => :nounzip
      sha256 "761678fb0aa5597c5993ff7a7e9a188f06d830649a8798fa1b983a5fcabc0342"

      def install
        bin.install "sbomex-darwin-amd64" => "sbomex"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.2/sbomex-darwin-arm64", :using => :nounzip
      sha256 "4ea732ec1633e69c7ce2644f6bb4b19ebf0ae94849e5e78b37a356b26d9e548e"

      def install
        bin.install "sbomex-darwin-arm64" => "sbomex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.2/sbomex-linux-amd64", :using => :nounzip
      sha256 "8f6e3e6a33032df5626a690fc13defeaa45ee5d4aebb043328fb92c65e795b0e"

      def install
        bin.install "sbomex-linux-amd64" => "sbomex"
      end
    end
  end
end

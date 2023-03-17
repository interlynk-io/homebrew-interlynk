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
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-darwin-amd64" :using => :nounzip
      sha256 "f5d03494b9284e6e5b4d2d654a25590b1c13cd13f6582a5d8174fe9c90a89019"

      def install
        bin.install "sbomex-darwin-amd64" => "sbomex-darwin-amd64"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-darwin-arm64" :using => :nounzip
      sha256 "e7dcff5ce110da0693d9c0e8f4d5a2ee3f0e9169e56858d07f191285341306dd"

      def install
        bin.install "sbomex-darwin-arm64" => "sbomex-darwin-arm64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-linux-arm64" :using => :nounzip
      sha256 "a0bf5377212f50ed9ee79d7e8e0728aaeb48ed053b27f2731566ccfeedcae420"

      def install
        bin.install "sbomex-linux-arm64" => "sbomex-linux-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-linux-amd64" :using => :nounzip
      sha256 "e3bd9c5dfbf7a77697b7d3b342e26d0fef68768352296155d40a532a2fe6e946"

      def install
        bin.install "sbomex-linux-amd64" => "sbomex-linux-amd64"
      end
    end
  end
end

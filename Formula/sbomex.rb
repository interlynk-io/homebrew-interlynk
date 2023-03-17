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
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-darwin-amd64", :using => :nounzip
      sha256 "17fff720a470343b82a313452b85a0221fdde048d0b3cd0a74889cbc70e2731f"

      def install
        bin.install "sbomex-darwin-amd64" => "sbomex"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-darwin-arm64", :using => :nounzip
      sha256 "84c8be0a3a3841fb85e26a1a878472266bb7042c855868803a9f2ad92e8c09b8"

      def install
        bin.install "sbomex-darwin-arm64" => "sbomex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomex/releases/download/v0.0.1/sbomex-linux-amd64", :using => :nounzip
      sha256 "38c1b49f769fbe5296342e955b4ed918c4bb78637c49fe6d09c06e917b595cb2"

      def install
        bin.install "sbomex-linux-amd64" => "sbomex"
      end
    end
  end
end

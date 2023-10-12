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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sbomgr < Formula
  desc "SBOM Grep - Search through SBOMs"
  homepage "https://github.com/interlynk-io/sbomgr"
  version "v0.0.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.11/sbomgr-darwin-arm64", :using => :nounzip
      sha256 "403bccf6720551190e20b7364dc81d83f1145bf8eaa8ff453f3b23d4970bfbce"

      def install
        bin.install "sbomgr-darwin-arm64" => "sbomgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.11/sbomgr-darwin-amd64", :using => :nounzip
      sha256 "2da4501cf47a2a171f54bc315863415fea7f4b77bd4ddf12db23175f60bc614d"

      def install
        bin.install "sbomgr-darwin-amd64" => "sbomgr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.11/sbomgr-linux-arm64", :using => :nounzip
      sha256 "56927bf11c96f55e6d543e881a14a584eac5f97a6d1a1a80b0b0bf78f8c95c53"

      def install
        bin.install "sbomgr-linux-arm64" => "sbomgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.11/sbomgr-linux-amd64", :using => :nounzip
      sha256 "4973f68cff54059ba98e21449dd93a695053b2e4d5fd8d4eb4480ce5bdb03e37"

      def install
        bin.install "sbomgr-linux-amd64" => "sbomgr"
      end
    end
  end

  test do
    system "#{bin}/sbomgr" "version"
  end
end

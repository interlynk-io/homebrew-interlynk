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
  version "v0.0.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.10/sbomgr-darwin-arm64", :using => :nounzip
      sha256 "9604db65e2bac234a95c7c3b055ff69962265ee66422aa252175d325e5114d98"

      def install
        bin.install "sbomgr-darwin-arm64" => "sbomgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.10/sbomgr-darwin-amd64", :using => :nounzip
      sha256 "849a5126b4a85d4b968e41d7e0e8b667b34204141a957159a573326e5b0a1f48"

      def install
        bin.install "sbomgr-darwin-amd64" => "sbomgr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.10/sbomgr-linux-arm64", :using => :nounzip
      sha256 "21d2c83df04ab56ea32fbcc2aef955268fdc20482e0d792d5d4e81b8ab322486"

      def install
        bin.install "sbomgr-linux-arm64" => "sbomgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomgr/releases/download/v0.0.10/sbomgr-linux-amd64", :using => :nounzip
      sha256 "74b58d3373e69140d26a3a9fcebd4b5c44d77e73f8e5b75ccdb09257a5af6c3f"

      def install
        bin.install "sbomgr-linux-amd64" => "sbomgr"
      end
    end
  end

  test do
    system "#{bin}/sbomgr" "version"
  end
end

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
class Sbomasm < Formula
  desc "SBOM Assembler - Assembler for your SBOMs"
  homepage "https://github.com/interlynk-io/sbomasm"
  version "v0.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.3/sbomasm-darwin-arm64", :using => :nounzip
      sha256 "0da314a36ce94bf9f950fae472a4139b60fc8fb9068661331984d0f1d0c19942"

      def install
        bin.install "sbomasm-darwin-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.3/sbomasm-darwin-amd64", :using => :nounzip
      sha256 "20b5c34a44b60421a54e223a00cae7c0d5ff8d2d895768c89951bce7c09c4da3"

      def install
        bin.install "sbomasm-darwin-amd64" => "sbomasm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.3/sbomasm-linux-arm64", :using => :nounzip
      sha256 "92fb61bf17ef0d980578ff9d1dbd04d3ceefa233bc7ad782eee1a435cb89a20a"

      def install
        bin.install "sbomasm-linux-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.3/sbomasm-linux-amd64", :using => :nounzip
      sha256 "23db286d12a78ba2d29209fd3d4bc8519241eeded6f406f8325c9944102a0e8b"

      def install
        bin.install "sbomasm-linux-amd64" => "sbomasm"
      end
    end
  end

  test do
    system "#{bin}/sbomasm" "version"
  end
end

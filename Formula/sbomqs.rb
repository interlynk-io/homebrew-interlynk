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

class Sbomqs < Formula
    desc "sbomqs quality score for sboms"
    homepage "https://github.com/interlynk-io/sbomqs"
    version "0.0.18"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.18/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "3b6d38929a3d2336dae8f715549ec716cabe609f70ea750297feb95f3a438abb"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.18/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "3cf2d78000aefd40d39119922846fefe54ef9b21d743458ead179312c72a7f26"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.18/sbomqs-linux-amd64", :using => :nounzip
            sha256 "bc79d568f6e3a8f4b1f0cbaadba0f1b6fe34ae03af9c5b24a9df71d0bd11fcc5"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.18/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "d85eb40d8becd7dde14860c1b58fa5e8a88db2c9aff33090d4ba3d0742be8c1b"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

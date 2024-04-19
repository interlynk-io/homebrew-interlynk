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
    version "v0.1.0"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.0/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "5b6c5016ed703484dc9258496fc491fd1e58cb28572d4a31a7c0cb51c7ab1398"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.0/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "cd3e4fdfddfff05b0e0c4b82f296d7f6475eef7b99282baaf3d8616415d2ca64"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.0/sbomqs-linux-amd64", :using => :nounzip
            sha256 "8d3b7fb0327c85c7d277d70e5c2cd2278367bb53604100d8a7b21d2c4ef8e611"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.0/sbomqs-linux-arm64", :using => :nounzip
            sha256 "600241263b9b5adc3b9bb1af767a8c915921e0d50121cbca6fb5c041a85308f3"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

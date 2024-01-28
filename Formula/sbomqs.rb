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
    version "v0.0.30"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.30/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "f5d49a39fe9bfa54bcdbd0a6a4951258f759487009e8fbfa7292ff77bd06fd36"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.30/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "db4b406422936bff07ee335fb25073f601d1952f6f580c5f714c42793510f5e6"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.30/sbomqs-linux-amd64", :using => :nounzip
            sha256 "c436242a6d9ba8991c21bf821f3bdd6730a19d621487f729ac6a967f4b680749"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.30/sbomqs-linux-arm64", :using => :nounzip
            sha256 "bc23243c8a2d980029ce318c593fe73230c9077cf992eed8fe2583a328325691"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

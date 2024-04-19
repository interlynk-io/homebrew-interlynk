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
    version "v0.1.1"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.1/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "1e3fdc482714155f6f01a8bd1fc2926bb4963b5013d3ca2f915ed974e2cb0403"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.1/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "f099a81bbc5b22d0698007a38e7f7225b056e5d427d9ddc584281c8fa1e0cf9d"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.1/sbomqs-linux-amd64", :using => :nounzip
            sha256 "92d2b845d93600d5adf52eb0c1754e2940c619f1b7cc87d7a228f11d62f8b110"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.1/sbomqs-linux-arm64", :using => :nounzip
            sha256 "a4133147ce9f2aa2330c31b47aeffb6805477cbbba0186427f4bcc249476fba0"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

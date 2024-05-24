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
    version "v0.1.4"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.4/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "2822acc6619c6e79519ddde762308cf37b21530c13ef6f02b5a76ace95cc2a6b"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.4/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "469a2fac99a820392f5bc25b2b93bc588ade5ff843ef685057448def29fd346b"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.4/sbomqs-linux-amd64", :using => :nounzip
            sha256 "faee75b28daa07df57da2097b793276f8fd5357682ab61d71ec3fc265cdcf8c4"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.4/sbomqs-linux-arm64", :using => :nounzip
            sha256 "366b1b7617e1adf2619625a8d5c824248ef66479b9a1fc436106a63a61ff552e"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

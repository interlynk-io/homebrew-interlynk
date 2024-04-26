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
    version "v0.1.3"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.3/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "83e328c0a19f673f364d0e9d31f98ce311fb6b400320b5498344f4b49ae74d5d"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.3/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "0c7fce08787f695fa9f565cdd041691ad71dba1627af373115b1f50389ac413b"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.3/sbomqs-linux-amd64", :using => :nounzip
            sha256 "086cba389ff9789d7c17bc75f51758291ab869067664ce8ebf48280dab458a4e"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.3/sbomqs-linux-arm64", :using => :nounzip
            sha256 "8d072f30418863c044007efe8f93f98466925b0aa27bb443c12ab2c387b06b2e"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

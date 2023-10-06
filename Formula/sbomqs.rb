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
    version "v0.0.22"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.22/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "7f7a564614eb936be63c80005282e0177ba2a2554d7cfcde5c522204f73fedf3"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.22/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "cb92f0240825c1815b2ad6059926e2c68491b4a9504ff17cd17787335251a170"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.22/sbomqs-linux-amd64", :using => :nounzip
            sha256 "6b2de327b4dcd258487692f8caf49d94a7900666f21c83e644cdb2728036b0d3"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.22/sbomqs-linux-arm64", :using => :nounzip
            sha256 "af6789f06a18d5b214afc8d454604a219fdc564a7f624dc61620cc45519a0145"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

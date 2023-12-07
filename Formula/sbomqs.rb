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
    version "v0.0.28"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.28/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "9fc289d06b9b9f3ae9131e9b74cc5da1a2ce307bf10842a95893fcf101811c4d"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.28/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "fe0892ddd0597eeeddbaac455d1a2ef8046f1662928d9d4ba6738c1b8bfc12e9"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.28/sbomqs-linux-amd64", :using => :nounzip
            sha256 "2fb487d644a0daca7d8f241631bf03faa28c3c80eb97ab670a2aa92147671294"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.28/sbomqs-linux-arm64", :using => :nounzip
            sha256 "69dbc5f468243c107cdad87ef3e53040bac3736da0b2a6d89d35a5544e0612a9"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end

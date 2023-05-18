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
    version "0.0.17"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.17/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "6534e489abb47b1e73b46036691017acbced48e4b6621cbeb4eb3e61969a5410"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.17/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "8ef7ab19c9d22278e9d2eb1a5f498b990df8e760e41654d844b5545dde3f65bf"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.17/sbomqs-linux-amd64", :using => :nounzip
            sha256 "ec18765492a9034fe154531887d250f3cc4711fd0e779337b6966dd6b59a1e34"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.17/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "640308d2eebe2cb12af70a85fa0c93d9c8e8c849e4b385b69dbad943ccb515bc"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 

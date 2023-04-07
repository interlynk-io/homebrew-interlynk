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
    version "0.0.13"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.13/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "ed7831dbfac904021da584bc4e6de8a1e86afc15f821b10ba5918bc670497f0f"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.13/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "7557350c5ac925fe82f59b6ae90e26e8df2413e67242d44be2e5ffe8d80c43b0"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.13/sbomqs-linux-amd64", :using => :nounzip
            sha256 "33265331ed8b0d09a2e9de9022ff4bb59d5c6cdce7ba77aaa466a4d9f5fc1cc8"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.13/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "7557350c5ac925fe82f59b6ae90e26e8df2413e67242d44be2e5ffe8d80c43b0"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 

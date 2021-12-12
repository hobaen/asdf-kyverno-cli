#!/usr/bin/env bash

set -euo pipefail

version=$ASDF_INSTALL_VERSION
download_path=$ASDF_DOWNLOAD_PATH

get_file_name() {
    
  echo "kyverno-cli_v${version}_$(uname | tr '[:upper:]' '[:lower:]')_x86_64.tar.gz"
  
}

get_download_path() {
  if [ $# -eq 0 ]; then
    local file_name=$(get_file_name)
  else
    local file_name="$1"
  fi

  echo "${download_path}/${file_name}"
}

get_download_url() {
    local file_name="$1"
    echo "https://github.com/kyverno/kyverno/releases/download/v${version}/${file_name}"
}


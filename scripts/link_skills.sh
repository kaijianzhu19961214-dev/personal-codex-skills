#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="${repo_root}/skills"
target_dir="${CODEX_HOME:-${HOME}/.codex}/skills"
codex_home="${CODEX_HOME:-${HOME}/.codex}"

mkdir -p "${target_dir}"

for skill_path in "${source_dir}"/*; do
  if [[ ! -d "${skill_path}" ]]; then
    continue
  fi

  skill_name="$(basename "${skill_path}")"
  target_path="${target_dir}/${skill_name}"

  if [[ -e "${target_path}" || -L "${target_path}" ]]; then
    echo "skip ${skill_name}: ${target_path} already exists"
    continue
  fi

  ln -s "${skill_path}" "${target_path}"
  echo "linked ${skill_name} -> ${target_path}"
done

memsearch_vendor="${repo_root}/vendor/memsearch-codex"
memsearch_target="${codex_home}/memsearch-codex"

if [[ -d "${memsearch_vendor}" ]]; then
  if [[ -e "${memsearch_target}" || -L "${memsearch_target}" ]]; then
    echo "skip memsearch-codex: ${memsearch_target} already exists"
  else
    cp -R "${memsearch_vendor}" "${memsearch_target}"
    echo "copied memsearch-codex -> ${memsearch_target}"
  fi
fi

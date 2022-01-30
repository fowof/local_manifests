
DIR="$(dirname "${BASH_SOURCE:-$0}")"

MANIFEST="${DIR}/manifest.xml"

[ -f "$MANIFEST" ] || exit 1

repo init \
  -u https://github.com/LineageOS/android.git \
  -b lineage-18.1 \
  --groups=all,-notdefault,-mips

mkdir -p .repo/local_manifests

mv \
  "$MANIFEST" \
  .repo/local_manifests/togari.xml

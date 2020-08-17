###### forked from [115ek/manifest](https://github.com/115ek/manifest)

## How To Build

TWRP is built in a minimal environment to save disk space and to avoid a lot of unnecessary things.

navigate into desired directory

### initialize repo:

    repo init \
      -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git \
      -b twrp-9.0

### download manifest:

    cd .repo
    git clone https://github.com/fowof/local_manifests -b twrp
    cd ../

### sync repo:

    $ repo sync

### set up build env:

    $ export ALLOW_MISSING_DEPENDENCIES=true
    $ source build/envsetup.sh

get needed patch (this fixes automatic OTA update installation):

    $ repopick -g https://gerrit.twrp.me 1673 1990

### build:

    $ lunch omni_togari-eng
    $ mka recoveryimage

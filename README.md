###### forked from [115ek/manifest](https://github.com/115ek/manifest)

#### initialize repo

    $ repo init \
        -u https://github.com/LineageOS/android.git \
        -b lineage-17.1

#### download local manifest

    $ mkdir .repo/local_manifests
    $ curl \
        -Lo .repo/local_manifests/amami.xml \
        https://github.com/fowof/local_manifests/raw/lineage-17.1/manifest.xml

#### sync repo

    $ repo sync

#### build

    $ . build/envsetup.sh
    $ brunch togari
    

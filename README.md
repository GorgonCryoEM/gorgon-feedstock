About gorgon
============

Home: http://gorgon.wustl.edu

Package license: 

Feedstock license: BSD 3-Clause

Summary: Gorgon, an interactive molecular modeling system

Gorgon is an interactive molecular modeling system
specifically geared towards cryo-EM and other low resolution
structures of macromolecular complexes. The long term goal of
the gorgon project is to be able to address to every part of
the molecular modeling pipeline starting from the initial
volumetric reconstruction of the complex all the way to the
final placement of each individual atom.


Installing gorgon
=================

Installing `gorgon` from the `gorgoncryoem` channel can be achieved by adding `gorgoncryoem` to your channels with:

```
conda config --add channels gorgoncryoem
```

Once the `gorgoncryoem` channel has been enabled, `gorgon` can be installed with:

```
conda install gorgon
```

It is possible to list all of the versions of `gorgon` available on your platform with:

```
conda search gorgon --channel gorgoncryoem
```



Current build status
====================

Linux: [![Circle CI](https://circleci.com/gh/GorgonCryoEM/gorgon-feedstock.svg?style=shield)](https://circleci.com/gh/GorgonCryoEM/gorgon-feedstock)
OSX: ![](https://cdn.rawgit.com/conda-forge/conda-smithy/90845bba35bec53edac7a16638aa4d77217a3713/conda_smithy/static/disabled.svg)
Windows: ![](https://cdn.rawgit.com/conda-forge/conda-smithy/90845bba35bec53edac7a16638aa4d77217a3713/conda_smithy/static/disabled.svg)

Current release info
====================
Version: [![Anaconda-Server Badge](https://anaconda.org/gorgoncryoem/gorgon/badges/version.svg)](https://anaconda.org/gorgoncryoem/gorgon)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/gorgoncryoem/gorgon/badges/downloads.svg)](https://anaconda.org/gorgoncryoem/gorgon)


Updating gorgon-feedstock
=========================

If you would like to improve the gorgon recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`gorgoncryoem` channel, whereupon the built conda packages will be available for
everybody to install and use from the `gorgoncryoem` channel.
Note that all branches in the GorgonCryoEM/gorgon-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string)
   back to 0.

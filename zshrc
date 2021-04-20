### Path and shared libraries
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin
### :/Users/paola/.local/bin
export DYLD_LIBRARY_PATH=/usr/local/lib

### ROOT
#export ROOTSYS=$HOME/Software/root
#export ROOTSYS=$HOME/Software/root_v6.18.04
#export PATH=$PATH:$ROOTSYS/bin
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ROOTSYS/lib

##GCCXML
#export GCCXMLPATH=$HOME/Software/gccxml/bin

### Geant4
function geant6() {
    local cdir=`pwd`
    export G4INSTALL=$HOME/Software/geant4.10.06.p01;
    cd $G4INSTALL/bin; source "geant4.sh"
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$G4INSTALL/lib;
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Users/paola/qt_install/5.15.2/clang_64/lib;
    cd $HOME/Software/root_v6.22.02/bin; source "thisroot.sh"; cd ${cdir}
}

alias g5='export ROOTSYS=$HOME/Software/root_v5.34.36;
export PATH=$PATH:$ROOTSYS/bin;
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ROOTSYS/lib;
export G4INSTALL=$HOME/Software/geant4.10.05.p01;
export PATH=$PATH:$G4INSTALL/bin;
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$G4INSTALL/lib;
export G4LEDATA=$G4INSTALL/data/G4EMLOW7.7;
export G4LEVELGAMMADATA=$G4INSTALL/data/PhotonEvaporation5.3;
export G4RADIOACTIVEDATA=$G4INSTALL/data/RadioactiveDecay5.3;
export G4ENSDFSTATEDATA=$G4INSTALL/data/G4ENSDFSTATE2.2;
export G4SAIDXSDATA=$G4INSTALL/data/G4SAIDDATA2.0;
export G4PARTICLEXSDATA=$G4INSTALL/data/G4PARTICLEXS1.1;
export G4NEUTRONHPDATA=$G4INSTALL/data/G4NDL4.5;
export G4INCLDATA=$G4INSTALL/data/G4INCL1.0'

### don't use it in Big Sur
alias g6='export ROOTSYS=$HOME/Software/root_v6.22.02;
export PATH=$PATH:$ROOTSYS/bin;
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ROOTSYS/lib;
export G4INSTALL=$HOME/Software/geant4.10.06.p01;
export PATH=$PATH:$G4INSTALL/bin;
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$G4INSTALL/lib;
export G4LEDATA=$G4INSTALL/data/G4EMLOW7.9.1;
export G4LEVELGAMMADATA=$G4INSTALL/data/PhotonEvaporation5.5;
export G4RADIOACTIVEDATA=$G4INSTALL/data/RadioactiveDecay5.4;
export G4ENSDFSTATEDATA=$G4INSTALL/data/G4ENSDFSTATE2.2;
export G4SAIDXSDATA=$G4INSTALL/data/G4SAIDDATA2.0;
export G4PARTICLEXSDATA=$G4INSTALL/data/G4PARTICLEXS2.1;
export G4NEUTRONHPDATA=$G4INSTALL/data/G4NDL4.6;
export G4INCLDATA=$G4INSTALL/data/G4INCL1.0'


#export PATH=$HOME/Software/geant4.9.3/g4work/bin/G4SYSTEM

## for examples/extended/persistency
export CLHEP_BASE_DIR=$HOME/Software/CLHEP/2.1.1.0
export PATH=$PATH:$HOME/Software/CLHEP/2.1.1.0/bin
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/Software/CLHEP/2.1.1.0/lib
export CLHEP_INCLUDE_DIR=$HOME/Software/CLHEP/2.1.1.0/include

###export GATE_DIR=$HOME/Software/GATE
export GATE_DIR=$HOME/Software/GATE_hdf5
export PATH=$PATH:$GATE_DIR/bin
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$GATE_DIR/lib

## hdf5
export HDF5_LIB=/Users/paola/Software/hdf5-1.8.17/hdf5/lib
export HDF5_INC=/Users/paola/Software/hdf5-1.8.17/hdf5/include
export HDF5_DISABLE_VERSION_CHECK=1

## NEST
export NEST_DIR=$HOME/Software/nest
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$NEST_DIR/lib

export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

export PATH=$PATH:/Applications/CMake.app/Contents/bin
export PATH=/Users/paola/Software/scons-3.0.1:$PATH

## IC
export IC_DATA=/Users/paola/Software/IC/data

### Some comfortable aliases
alias ls='ls -G'
alias ll='ls -alhFG'
alias ..='cd ..'
alias rm="rm -i"
alias mv="mv -i"
alias space="du -sh"

### Some shortcuts
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias aquamacs="/Applications/Aquamacs.app/Contents/MacOS/Aquamacs"
alias atom="/Applications/Atom.app/Contents/MacOs/Atom"
alias profile="source ~/.zshrc"
alias nexus="cd /Users/paola/Software/nexus"
alias neutrinos="ssh -Y paolafer@neutrinos1.ific.uv.es"
alias fe1="ssh -Y -v -o PreferredAuthentications=password -o PubkeyAuthentication=no paolafer@195.77.159.50 -p 6030"
alias shifter="ssh -Y -v -o PreferredAuthentications=password -o PubkeyAuthentication=no shifter@195.77.159.50 -p 6030"
alias cern="ssh -X paferrar@lxplus.cern.ch"
alias majorana="ssh -Y paolafer@majorana1.ific.uv.es"
alias gpu1="ssh paolafer@gpu1next.ific.uv.es"
alias dipc='ssh -t paola@ac-02.sw.ehu.es ssh atlas-fdr.sw.ehu.es'
alias ific='ssh romo@ui05.ific.uv.es'
alias alcf='ssh paola@theta.alcf.anl.gov'
alias petalo='ssh paolafer@frontend1petalo.ific.uv.es'

alias py3='export PATH="/Users/paola/Software/miniconda3/bin:$PATH"; export LD_LIBRARY_PATH="/Users/paola/Software/miniconda3/lib:$LD_LIBRARY_PATH"'
alias py2='export PATH="/Users/paola/Software/miniconda2/bin:$PATH"; export LD_LIBRARY_PATH="/Users/paola/Software/miniconda2/lib:$LD_LIBRARY_PATH"'
alias py3nexus='export PATH="$PATH:/Users/paola/Software/miniconda3/bin"; export LD_LIBRARY_PATH="/Users/paola/Software/miniconda3/lib:$LD_LIBRARY_PATH"; source activate nexus_env'


alias scikit='conda activate scipy-image'

alias ic_setup='export ICTDIR="/Users/paola/Software/IC";
export ICDIR="$ICTDIR/invisible_cities/";
export PATH="$ICTDIR/bin:$PATH";
export PYTHONPATH="$ICTDIR:$PYTHONPATH";
conda activate IC-3.7-2020-06-16'

alias icaro='cd /Users/paola/Software/ICARO; source icaro_setup.sh; cd -'
alias antea='cd /Users/paola/Software/ANTEA; source antea_setup.sh; cd -'
alias act_conda='source /Users/paola/miniconda/etc/profile.d/conda.sh;conda activate'

export PYTHONPATH=$PYTHONPATH:/Users/paola/Software/analysis/next_analysis

alias nexus_cmake='export GSL_ROOT_DIR=/usr/local/; 
export HDF5_ROOT=/Users/paola/Software/hdf5-1.8.17/hdf5;'
# to configure
# cmake -DGATE_ROOT=/Users/paola/Software/GATE_hdf5 -DCMAKE_INSTALL_PREFIX=/Users/paola/Software/nexus/whatever /Users/paola/Software/nexus/whatever
# to build
# cmake --build . --target install

### Custom prompt
#export PS1="[\u@\h \W]$ "
export PS1="[%n@petalo01] %1~ \$ "

### For gsl
#export GSL_DIR=/usr/local
#export GSL_LIB=GSL_DIR/lib

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/paola/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/paola/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/paola/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/paola/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


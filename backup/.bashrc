# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=$ROOTSYS/bin:$PATH
export LD_LIBRARY_PATH=:$ROOTSYS/lib:$LD_LIBRARY_PATH

source /scratch/bes/boss/655/setup.sh
source /home/lify/cmt655/setup.sh
source /home/lify/work655/TestRelease/TestRelease-00-00-75/cmt/setup.sh

export ROOTSYS=/scratch/other/wangsg/root/530
export FFTW3=/scratch/other/wangsg/root/fftw
#export ROOTSYS=/scratch/other/wangsg/root/534

export PYTHON72=/md3000/scratch02/xuzj/Programs/Python
export PATH=$PYTHON72/bin:$PATH
export LD_LIBRARY_PATH=$PYTHON72/lib:$LD_LIBRARY_PATH

alias la='ls -al'
alias ihep5='ssh -X lify@lxslc5.ihep.ac.cn'

alias modelog='vi /home/lify/elog/elog-3.0.0/elogd.cfg'
alias configelog='source /home/lify/elog/elog_reconfig.sh'

function mcd(){
	mkdir -p "$1"
	cd "$1"
}






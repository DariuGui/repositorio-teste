#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=0-12:0 #especifica o tempo máximo de execução do job, dado no padrão dias-horas:minutos
module load softwares/gsrc/2020_05
mkdir -p /home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda/JOB4/Sim_10
cp -f run_LteTodo24_SimPerScriptCampaing_cluster_Lambda_JOB4_Sim_10.sh /home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda
cp -f LteTodo24_SimPerScriptCampaing.yaml /home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda
cd '/home/dgdmacedo/ns-allinone-3.35/ns-3.35/'
srun -N 1 -n 1 ./waf --cwd='/home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda/JOB4/Sim_10' --run 'lena-simple-epc-v6 --RngRun=1093875492007767 --fadingEnd=/home/dgdmacedo/ns-allinone-3.35/ns-3.35/src/lte/model/fading-traces/fading_trace_ETU_3kmph.fad --Lambda=0.001 --packetSize=125 --numEnbs=1 --numUes=1 --appStartTime=0.01 --simTime=60 --interPacketInterval=100 --radius=100 --distance=20 --useUdp=0 --usePoisson=1 --useShadowing=0 --useFading=0 --useDl=1 --useUl=0 --usePl=0 --verbose=0 --outputDir='/home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda/JOB4/Sim_10' --numUes=1 --useShadowing=1 --useFading=1 --Lambda=0.01' > /home/dgdmacedo/ns-allinone-3.35/ns-3.35/results_cluster_LteTodo24_SimPerScriptCampaing_Lambda/JOB4/Sim_10.out 2>&1

#!/bin/ksh
MEC_VAR=TMIN                                                 # Nome da variavel avaliada
MEC_EVAL_CUR=`cat AUX-CURRENT_EVAL.txt`                      # Nome da avaliação
MEC_REMOTE_ROOT_DIR=/dados/dmdpesq/roberto.garcia/MEC_DATA/  # Diretorio root dos dados da avaliação
MEC_REMOTE_SHP_DIR=/home/roberto.garcia/ProjDocs/Projects/MEC/MEC-PRE/CommonData/shapefiles  # Diretorio dos shapefiles
MEC_LOGIN=roberto.garcia@itapemirim.cptec.inpe.br

if [[ ${MEC_VAR} == "PREC" ]]; then
   MEC_obs=MERGE
else
   if [[ ${MEC_VAR} == "TMIN" ]] || [[ ${MEC_VAR} == "TMAX" ]]; then
      MEC_OBS=SAMeT
   else
      echo
      echo Script não preparado para a variavel....cadastre o nome do dado observado. Abortando!
      echo
      exit 1 
   fi
fi


mkdir -p ${MEC_EVAL_CUR}/IMG ${MEC_EVAL_CUR}/MASKS ${MEC_EVAL_CUR}/FLDS ${MEC_EVAL_CUR}/SHAPEFILES


 # Cria diretórios necessários para a UI 


echo Downloading DEPLOY dir to $MEC_EVAL_CUR ======================================================
echo
rsync -ruv ${MEC_LOGIN}:${MEC_REMOTE_ROOT_DIR}/${MEC_EVAL_CUR}/DEPLOY/* ${MEC_EVAL_CUR}

#echo
#echo Downloading OBS dir to ${MEC_EVAL_CUR} =============================================================
#echo
#rsync -uv ${MEC_LOGIN}:${MEC_REMOTE_ROOT_DIR}/${MEC_EVAL_CUR}/EVAL/OBS_* ${MEC_EVAL_CUR}

echo
echo Downloading FLD dir to ${MEC_EVAL_CUR} =============================================================
echo
rsync -uv ${MEC_LOGIN}:${MEC_REMOTE_ROOT_DIR}/${MEC_EVAL_CUR}/EVAL/FLD_* ${MEC_EVAL_CUR}/FLDS
  
# OBSERVED IMAGES
echo
echo Downloading OBS IMGs to ${MEC_EVAL_CUR} ========================================================
echo
rsync -uv ${MEC_LOGIN}:${MEC_REMOTE_ROOT_DIR}/${MEC_EVAL_CUR}/IMG/${MEC_VAR}_${MEC_OBS}_*.jpeg ${MEC_EVAL_CUR}/IMG/

# MASKS
echo
echo Downloading MASKs to ${MEC_EVAL_CUR} ========================================================
echo
rsync -uv ${MEC_LOGIN}:${MEC_REMOTE_ROOT_DIR}/${MEC_EVAL_CUR}/MASKS/* ${MEC_EVAL_CUR}/MASKS

# SHAPEFILES
echo
echo Downloading SHAPEFILES to ${MEC_EVAL_CUR} ========================================================
echo
rsync -ruv ${MEC_LOGIN}:${MEC_REMOTE_SHP_DIR}/* ${MEC_EVAL_CUR}/SHAPEFILES


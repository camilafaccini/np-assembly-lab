#!/bin/bash

# EEE2 concentrations:  0.6 0.57 0.55 0.53 0.5 0.4 0.2 0.1 0.04 0.01
# E2 concentrations:    0.3 0.28 0.25 0.22 0.2 0.18 0.15 0.1 0.04 0.01 
# Q2 concentrations:    0.2 0.16 0.15 0.14 0.12 0.1 0.08 0.06 0.04 0.01
# K2 concentrations:    0.2 0.15 0.12 0.1 0.08 0.07 0.06 0.05 0.04 0.01

for USERVLP in "E2" #"EEE2" #"E2"
do
if [ "$USERVLP" = "E2" ]; then
  echo "its E2!"
  USERVLPCHARGE="-1500"
  USERSIGMAHCRAW="5.16"
  for USERSALTCONC in 0.255 #0.3 0.28 0.27 0.26 0.25 0.245 0.24 0.22 0.2 0.18 0.15 0.1 0.04 0.01
  do
  #copy E2 cutoffs here
    if [ "$USERSALTCONC" = 0.3 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.082436704384724"
        USERVLPLinkerEScutoff="0.6291816253053877"
        USERLinkerEScutoff="0.18271287128712868" 
    elif [ "$USERSALTCONC" = 0.28 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0860084544168702"
        USERVLPLinkerEScutoff="0.6320390253311045"
        USERLinkerEScutoff="0.18539168381123824" 
    elif [ "$USERSALTCONC" = 0.27 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0877943294329433"
        USERVLPLinkerEScutoff="0.6338249003471775"
        USERLinkerEScutoff="0.1868203838240967"     
    elif [ "$USERSALTCONC" = 0.26 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.089937379452231"
        USERVLPLinkerEScutoff="0.6354321878616432"
        USERLinkerEScutoff="0.18842767133856242" 
    elif [ "$USERSALTCONC" = 0.255 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0910089044618747"
        USERVLPLinkerEScutoff="0.636503712871287"
        USERLinkerEScutoff="0.18914202134499164"        
    elif [ "$USERSALTCONC" = 0.25 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0920804294715185"
        USERVLPLinkerEScutoff="0.6373966503793236"
        USERLinkerEScutoff="0.19003495885302812" 
    elif [ "$USERSALTCONC" = 0.245 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0931519544811623"
        USERVLPLinkerEScutoff="0.6382895878873601"
        USERLinkerEScutoff="0.19074930885945737"       
    elif [ "$USERSALTCONC" = 0.24 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0944020669924135"
        USERVLPLinkerEScutoff="0.6393611128970039"
        USERLinkerEScutoff="0.19164224636749386" 
    elif [ "$USERSALTCONC" = 0.23 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0969022920149156"
        USERVLPLinkerEScutoff="0.6415041629162915"
        USERLinkerEScutoff="0.19360670888517423"     
    elif [ "$USERSALTCONC" = 0.22 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0995811045390254"
        USERVLPLinkerEScutoff="0.6436472129355791"
        USERLinkerEScutoff="0.19557117140285454"     
    elif [ "$USERSALTCONC" = 0.2 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1054744920920663"
        USERVLPLinkerEScutoff="0.648826250482191"
        USERLinkerEScutoff="0.1998572714414298"     
    elif [ "$USERSALTCONC" = 0.18 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.112439404654751"
        USERVLPLinkerEScutoff="0.654719638035232"
        USERLinkerEScutoff="0.20503630898804162"     
    elif [ "$USERSALTCONC" = 0.15 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1254762922720842"
        USERVLPLinkerEScutoff="0.6657920631348848"
        USERLinkerEScutoff="0.21468003407483605"     
    elif [ "$USERSALTCONC" = 0.1 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1597650925806866"
        USERVLPLinkerEScutoff="0.6949018258968753"
        USERLinkerEScutoff="0.23968228429985852"     
    elif [ "$USERSALTCONC" = 0.04 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.2738825061077537"
        USERVLPLinkerEScutoff="0.7909819017616047"
        USERLinkerEScutoff="0.3196894850199306"     
    elif [ "$USERSALTCONC" = 0.01 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.6051623215893016"
        USERVLPLinkerEScutoff="1.0638636042175647"
        USERLinkerEScutoff="0.5372090619776263"     
    fi        
  dir="$USERVLP"_c"$USERSALTCONC"
  cp -a template/ $dir
  cd $dir
    sed -i 's/USERVLPCHARGE/'$USERVLPCHARGE'/g' in.1comp.template
    sed -i 's/USERSIGMAHCRAW/'$USERSIGMAHCRAW'/g' in.1comp.template
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' in.1comp.template
    sed -i 's/USERVLPEScutoff/'$USERVLPEScutoff'/g' in.1comp.template
    sed -i 's/USERLinkerEScutoff/'$USERLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLPLinkerEScutoff/'$USERVLPLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLP/'$USERVLP'/g' assembly.pbs
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' assembly.pbs
    sbatch assembly.pbs
    cd ..
  done
elif [ "$USERVLP" = "Q2" ]; then
  USERVLPCHARGE="-1080"
  USERSIGMAHCRAW="4.45"
  for USERSALTCONC in #add salt concs.
  do
  # copy Q2 cutoffs here
    if [ "$USERSALTCONC" = 0.2 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1054744920920663"
        USERVLPLinkerEScutoff="0.648826250482191"
        USERLinkerEScutoff="0.1998572714414298" 
    elif [ "$USERSALTCONC" = 0.17 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1163683296901117"
        USERVLPLinkerEScutoff="0.6581128005657708"
        USERLinkerEScutoff="0.2078937090137585"     
    elif [ "$USERSALTCONC" = 0.16 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1206544297286871"
        USERVLPLinkerEScutoff="0.6616845505979169"
        USERLinkerEScutoff="0.21110828404268994"     
    elif [ "$USERSALTCONC" = 0.15 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1254762922720842"
        USERVLPLinkerEScutoff="0.6657920631348848"
        USERLinkerEScutoff="0.21468003407483605"     
    elif [ "$USERSALTCONC" = 0.14 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.130655329818696"
        USERVLPLinkerEScutoff="0.6702567506750674"
        USERLinkerEScutoff="0.2184303716085894"     
    elif [ "$USERSALTCONC" = 0.12 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1433350424328148"
        USERVLPLinkerEScutoff="0.6809720007715055"
        USERLinkerEScutoff="0.2277169216921692"     
    elif [ "$USERSALTCONC" = 0.1 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1597650925806866"
        USERVLPLinkerEScutoff="0.6949018258968753"
        USERLinkerEScutoff="0.23968228429985852"     
    elif [ "$USERSALTCONC" = 0.06 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.2161987430885948"
        USERVLPLinkerEScutoff="0.7425846888260254"
        USERLinkerEScutoff="0.2796858846598945"     
    elif [ "$USERSALTCONC" = 0.04 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.2738825061077537"
        USERVLPLinkerEScutoff="0.7909819017616047"
        USERLinkerEScutoff="0.3196894850199306"     
    elif [ "$USERSALTCONC" = 0.01 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.6051623215893016"
        USERVLPLinkerEScutoff="1.0638636042175647"
        USERLinkerEScutoff="0.5372090619776263"     
    fi        
  dir="$USERVLP"_c"$USERSALTCONC"
  cp -a template/ $dir
  cd $dir
    sed -i 's/USERVLPCHARGE/'$USERVLPCHARGE'/g' in.1comp.template
    sed -i 's/USERSIGMAHCRAW/'$USERSIGMAHCRAW'/g' in.1comp.template
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' in.1comp.template
    sed -i 's/USERVLPEScutoff/'$USERVLPEScutoff'/g' in.1comp.template
    sed -i 's/USERLinkerEScutoff/'$USERLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLPLinkerEScutoff/'$USERVLPLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLP/'$USERVLP'/g' assembly.pbs
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' assembly.pbs
    sbatch assembly.pbs
    cd ..
  done
elif [ "$USERVLP" = "K2" ]; then
  USERVLPCHARGE="-600"
  USERSIGMAHCRAW="4.15"
  for USERSALTCONC in #add salt concs.
  do
  #copy K2 cutoffs here	
    if [ "$USERSALTCONC" = 0.2 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1054744920920663"
        USERVLPLinkerEScutoff="0.648826250482191"
        USERLinkerEScutoff="0.1998572714414298" 
    elif [ "$USERSALTCONC" = 0.15 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1254762922720842"
        USERVLPLinkerEScutoff="0.6657920631348848"
        USERLinkerEScutoff="0.21468003407483605"     
    elif [ "$USERSALTCONC" = 0.12 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1433350424328148"
        USERVLPLinkerEScutoff="0.6809720007715055"
        USERLinkerEScutoff="0.2277169216921692"     
    elif [ "$USERSALTCONC" = 0.1 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1597650925806866"
        USERVLPLinkerEScutoff="0.6949018258968753"
        USERLinkerEScutoff="0.23968228429985852"     
    elif [ "$USERSALTCONC" = 0.08 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1824457052848143"
        USERVLPLinkerEScutoff="0.7140106885688569"
        USERLinkerEScutoff="0.2557551594445159"     
    elif [ "$USERSALTCONC" = 0.75 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.0467192040632634"
        USERVLPLinkerEScutoff="0.5986431625305386"
        USERLinkerEScutoff="0.15556757104281854"     
    elif [ "$USERSALTCONC" = 0.07 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.1974470554198278"
        USERVLPLinkerEScutoff="0.7266904011829753"
        USERLinkerEScutoff="0.2664704095409541"     
    elif [ "$USERSALTCONC" = 0.06 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.2161987430885948"
        USERVLPLinkerEScutoff="0.7425846888260254"
        USERLinkerEScutoff="0.2796858846598945"     
    elif [ "$USERSALTCONC" = 0.05 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.240486643307188"
        USERVLPLinkerEScutoff="0.7629436640092581"
        USERLinkerEScutoff="0.2966516973125884"     
    elif [ "$USERSALTCONC" = 0.04 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.2738825061077537"
        USERVLPLinkerEScutoff="0.7909819017616047"
        USERLinkerEScutoff="0.3196894850199306"     
    elif [ "$USERSALTCONC" = 0.01 ]; then
        echo $USERSALTCONC
        USERVLPEScutoff="1.6051623215893016"
        USERVLPLinkerEScutoff="1.0638636042175647"
        USERLinkerEScutoff="0.5372090619776263"     
    fi     
  dir="$USERVLP"_c"$USERSALTCONC"
  cp -a template/ $dir
  cd $dir
    sed -i 's/USERVLPCHARGE/'$USERVLPCHARGE'/g' in.1comp.template
    sed -i 's/USERSIGMAHCRAW/'$USERSIGMAHCRAW'/g' in.1comp.template
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' in.1comp.template
    sed -i 's/USERVLPEScutoff/'$USERVLPEScutoff'/g' in.1comp.template
    sed -i 's/USERLinkerEScutoff/'$USERLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLPLinkerEScutoff/'$USERVLPLinkerEScutoff'/g' in.1comp.template
    sed -i 's/USERVLP/'$USERVLP'/g' assembly.pbs
    sed -i 's/USERSALTCONC/'$USERSALTCONC'/g' assembly.pbs
    sbatch assembly.pbs
    cd ..
  done
fi
done
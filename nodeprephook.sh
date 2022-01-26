# Called by startnode
if [ ! -e $STARTUP ]; then
  echo "H:" >> $STARTUP.tmp
  echo "cd ADF" >> $STARTUP.tmp
  echo "lh adf COM1 3F8  4 57600 8192  8192  8" >> $STARTUP.tmp
  echo "G:" >> $STARTUP.tmp
  echo "cd v2/NODE$FOUNDNODE" >> $STARTUP.tmp
  echo "ViSiON /N$FOUNDNODE /57600" >> $STARTUP.tmp
  echo "exitemu" >> $STARTUP.tmp
  unix2dos $STARTUP.tmp &> /dev/null
  mv $STARTUP.tmp $STARTUP
fi


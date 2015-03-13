for folder in Mar*
do
  echo $folder;
  mv $folder "replay-$folder";
done

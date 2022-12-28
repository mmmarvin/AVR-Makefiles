function print_usage()
{
  echo Usage: $0 [HEX Filename]
}

if [ $# -eq 1]
  then
    if [[ $1 == "--help" ]]
        then
          print_usage
    else
      avrdude -F -V -c arduino -p ATMEGA328P -P /dev/TTYACM0 -b 115200 -U flash:w:$1
    fi
else
  echo Invalid usage!
  print_usage
fi

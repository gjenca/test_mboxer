killall python3 2>/dev/null
rm -r xxx 2>/dev/null
mkdir -p xxx
cp xxx.good/781e5e245d69b566979b86e28d23f2c7 xxx
( python3 "$1"  >/dev/null& )
PID=$!
sleep 0.2
python3 test.py
EXIT_STATUS=$?
echo -------------
killall python3 2>/dev/null
exit $EXIT_STATUS

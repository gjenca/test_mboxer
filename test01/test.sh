killall python3 2>/dev/null
rm -r xxx 2>/dev/null
mkdir xxx
( python3 "$1"  >/dev/null& )
PID=$!
sleep 0.2
python3 test.py
EXIT_STATUS=$?
echo -------------
killall python3 2>/dev/null
echo -------------
ls -l xxx
exit $EXIT_STATUS

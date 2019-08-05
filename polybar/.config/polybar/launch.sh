#Terminate already running bar instance
killall -q polybar

#Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch bar
polybar i3 &
polybar openbox &

echo "polybar launched"

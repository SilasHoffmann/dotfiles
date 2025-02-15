#!/bin/bash

notify-send --app-name "HeadsetControl" "Headset-Akku:" "$(headsetcontrol -b | grep Level)"
#!/bin/bash
exec slstatus &
nitrogen --restore &
exec compton &

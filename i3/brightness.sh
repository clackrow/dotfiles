#!/bin/bash
brightnessctl | grep -oP '\(\K[0-9]+(?=%)'

#!/usr/bin/env bash
# Program:
#       This program is to evaluate the raidmeter performance in different traces.
# History:
# 2018.1.2  Vitor Zhu       First release.

sudo bash single_evaluation.sh dedupschems=0 tracetype=1 tracename=homes_500000.trace ;
resultname=homes.traditional capacity=100 devicename=/dev/nvme0n1

sudo bash single_evaluation.sh dedupschems=1 tracetype=1 tracename=homes_500000.trace ;
resultname=homes.EaD capacity=100 devicename=/dev/nvme0n1

sudo bash single_evaluation.sh dedupschems=0 tracetype=0 tracename=web_500000.trace ;
resultname=web.traditional capacity=100 devicename=/dev/nvme0n1

sudo bash single_evaluation.sh dedupschems=1 tracetype=0 tracename=web_500000.trace ;
resultname=web.EaD capacity=100 devicename=/dev/nvme0n1

sudo bash single_evaluation.sh dedupschems=0 tracetype=1 tracename=mail_500000.trace ;
resultname=mail.traditional capacity=100 devicename=/dev/nvme0n1

sudo bash single_evaluation.sh dedupschems=1 tracetype=1 tracename=mail_500000.trace ;
resultname=mail.EaD capacity=100 devicename=/dev/nvme0n1
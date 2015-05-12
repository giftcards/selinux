## Synopsis

Puppet module to turn selinux on and off without reboots.

## Example

Defaults are stored in params.pp. By default this module will turn selinux off.

## Motivation

Needed the ability to configure selinux and turn it on and off without a reboot.

## Installation

Tested on CentOS 6.
Does not require a reboot however if you disable selinux it will put it into permissive mode until a reboot. One issue to watch for is that selinux changes made by puppet while in permissive mode can still kick off service triggers.

## API Reference

status => enabled, disabled, permissive
type   => targeted, mls

## Contributors

Ryan Munz for Giftcards.com - May 2015

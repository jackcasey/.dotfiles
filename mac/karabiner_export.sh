#!/bin/sh

cli=/usr/local/bin/karabiner

$cli set private.control_space_is_underscore 1
/bin/echo -n .
$cli set repeat.wait 18
/bin/echo -n .
$cli set repeat.initial_wait 300
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set parameter.holdingkeytokey_wait 150
/bin/echo -n .
$cli set private.right_command_arrow_keys 1
/bin/echo -n .
$cli set private.ctrl_space_for_underscore 1
/bin/echo -n .
$cli set remap.consumer_to_fkeys_f5 1
/bin/echo -n .
$cli set private.kb_paradise_v60_emulation 1
/bin/echo -n .
/bin/echo

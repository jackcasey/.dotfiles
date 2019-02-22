/* Copyright 2018 Milton Griffin
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#include QMK_KEYBOARD_H

// Keyboard Layers
#define _QW 0
#define _FN1 1
#define _FN2 2
#define C_A(x) LALT(LCMD(x))

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

 [_QW] = LAYOUT_ortho_5x15( /* QWERTY */
    KC_ESC,  KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_MINS, LCTL(LCMD(KC_Q)),  KC_EQL,  KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_BSPC, \
    KC_TAB,  KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_LBRC, KC_BSLS, KC_RBRC, KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_QUOT, \
    KC_LCTL, KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_DEL, LCMD(KC_TAB),  KC_BSPC, KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_ENT,  \
    KC_LSFT, KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    LCMD(KC_LEFT),  KC_GRV,   LCMD(KC_RIGHT), KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH, KC_RSFT, \
    KC_LCTL, KC_LALT, KC_LGUI, MO(_FN1),KC_SPC,  KC_SPC,  MO(_FN2), LCMD(KC_SPC), KC_HYPR, KC_SPC, KC_SPC, MO(_FN1),KC_RGUI, KC_RALT, KC_RCTL  \
 ),
 [_FN1] = LAYOUT_ortho_5x15( /* FUNCTION */
    KC_GRV,  KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   _______, RESET,   _______,    KC_F6,   KC_F7,   KC_F8,   KC_MINS,   KC_EQL,  KC_DEL,  \
    _______, _______, _______, _______, _______, _______, _______, _______, _______,    _______, KC_PGUP, _______, KC_LBRC, KC_RBRC, KC_BSLS,  \
    _______, _______, _______, _______, _______, _______, _______, _______, LCTL(KC_W), KC_LEFT, KC_DOWN, KC_UP,   KC_RIGHT, _______, _______,  \
    _______, KC_MPRV, KC_MPLY, KC_MNXT, KC_VOLD, KC_VOLU, KC_MUTE, _______, _______,    _______, KC_PGDN, _______, _______, _______, _______,  \
    _______, _______, _______, _______, _______, _______, _______, _______, _______,    _______, _______, _______, _______, _______, _______  \
 ),
 [_FN2] = LAYOUT_ortho_5x15( /* FUNCTION */
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,  \
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______,  \
    _______, LALT(KC_1), LALT(KC_2), LALT(KC_3), LALT(KC_4), LALT(KC_5), _______, _______, _______,LALT(KC_1), LALT(KC_2), LALT(KC_3), LALT(KC_4), LALT(KC_5), _______,  \
    _______, C_A(KC_O), C_A(KC_P), C_A(KC_LBRC), C_A(KC_RBRC), _______, _______, _______, _______, C_A(KC_O), C_A(KC_P), C_A(KC_LBRC), C_A(KC_RBRC), _______, _______,  \
    _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, _______  \
 ),

};

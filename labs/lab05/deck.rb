#!/usr/bin/env ruby
# coding: utf-8
SUITS = %w(♠ ♥ ♦ ♣)
VALUES = ("2".."10").to_a + %w(J Q K A)

VALUES.product(SUITS)

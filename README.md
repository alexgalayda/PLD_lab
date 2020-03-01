# PLD labs
Мои афигенные лабы

## Установка совта для компиляции
Скоро будет

## Запуск
Очень удобно добавить в ~/.bashrc: `alias start_ise='source /opt/Xilinx/14.4/ISE_DS/settings64.sh > /dev/null`
```
$ start_ise 
$ ise 
```

## Заливка совта на ПЛИСы
Если все установилось правильно, то должно быть что-то вроде этого: 
```
$ djtgcfg -v
Digilent JTAG Config Utility v2.2.2
Copyright (C) 2010 Digilent, Inc.
support@digilentinc.com
```
Ищем подключенные девайсы:
```
$ djtgcfg enum
Found 1 device(s)

Device: DOnbUsb
    Product Name:   DOnbUsb1 V2.0
    User Name:      DOnbUsb
    Serial Number:  10054D131181
```
Еще желательно знать на какую микросхему будем заливать:
```
$ djtgcfg init -d DOnbUsb
Initializing scan chain...
Found Device ID: f5046093
Found Device ID: 41c22093

Found 2 device(s):
    Device 0: XC3S500E
    Device 1: XCF04S
```
Настало время заливать:
* `-i 0`: сюда, для того, чтобы просто исполнить код
* `-i 1`: сюда, для того, чтобы сохранить на плате
```
$ djtgcfg prog -d DOnbUsb -i 0 -f /path/to/bit/file.bit
```

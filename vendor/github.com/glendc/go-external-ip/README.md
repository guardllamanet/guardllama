# Go External IP [![Go Workflow Status](https://github.com/glendc/go-external-ip/workflows/Go/badge.svg)](https://github.com/glendc/go-external-ip/actions?query=workflow%Go)&nbsp;[![GoDoc](https://godoc.org/github.com/glendc/go-external-ip?status.svg)](https://godoc.org/github.com/glendc/go-external-ip)&nbsp;[![Go Report Card](https://goreportcard.com/badge/github.com/glendc/go-external-ip)](https://goreportcard.com/report/github.com/glendc/go-external-ip)[![license](https://img.shields.io/github/license/glendc/go-external-ip.svg)](https://github.com/GlenDC/go-external-ip/blob/master/LICENSE.txt)

A Golang library to get your external ip from multiple services.

## TODO

+ Design/Implement STUNSource, more info:
    + [RFC 3489](https://tools.ietf.org/html/rfc3489);
    + [RFC 5389](https://tools.ietf.org/html/rfc5389);

## Docs

https://godoc.org/github.com/GlenDC/go-external-ip

## Usage

Using the library can as simple as the following (runnable) example:

```go
package main

import (
    "fmt"
    "github.com/glendc/go-external-ip"
)

func main() {
    // Create the default consensus,
    // using the default configuration and no logger.
    consensus := externalip.DefaultConsensus(nil, nil)

    // By default Ipv4 or Ipv6 is returned,
    // use the function below to limit yourself to IPv4,
    // or pass in `6` instead to limit yourself to IPv6.
    // consensus.UseIPProtocol(4)

    // Get your IP,
    // which is never <nil> when err is <nil>.
    ip, err := consensus.ExternalIP()
    if err == nil {
        fmt.Println(ip.String()) // print IPv4/IPv6 in string format
    }
}
```

Please read [the documentation][docs] for more information.

## exip

This library also comes with a standalone command line application,
which can be used to get your external IP, directly from your terminal.

### install

```
$ go install github.com/glendc/go-external-ip/cmd/exip
```

### usage

```
$ exip -h
Retrieve your external IP.

Usage:
    exip [flags]

Flags:
  -h help
        show this usage message
  -p uint
        IP Protocol to be used (0, 4, or 6)
  -t duration
        consensus's voting timeout (default 5s)
  -v    log errors to STDERR, when defined
```

[docs]: https://pkg.go.dev/github.com/GlenDC/go-external-ip

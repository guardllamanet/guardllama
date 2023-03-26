

# v0.1.0 (2021-10-18)

- Add `(*Consensus).UseIPProtocol` method to restrict the IP returned
  to be able to either IPv4 or IPv6;
    - Author: [Jamie Curnow, @jc21](https://github.com/jc21);
    - Contributors: [Tejas](https://github.com/Tejas);

# v0.0.1 (untagged)

- remove `tnx.nl` from default Consensus source;
    - Author: [Juerd Waalboer, @Juerd](https://github.com/Juerd);

# v0.0.0 (untagged)

- initial release of this Go package;
- contains the `Consensus API` which in most cases is used using
  the default configuration;
- custom configurations are supported, allowing you to be able to define your own sources;
- shipped together with a small binary `exip` tool which allows you to quickly get our IP address;

Author: [Glen De Cauwsemaecker, @glendc](https://github.com/glendc)

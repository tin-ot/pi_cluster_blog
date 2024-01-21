# ipv6 setup attempts

```mermaid
graph LR
  Wan --> |Livebox| Lan_1 --> |Mikrotik| Lan_2
```

|Id|Setup|livebox lease|Lan_1 to Lan_2|Lan_2 to Wan|Wan to Lan_1|
|---|---|---|---|---|---|
|1|dhcp address + prefix (same lease)|ko|n/a|n/a|n/a|
|2|dhcp address + prefix (distinct leases)|ko|n/a|n/a|n/a|
|3|dhcp prefix (fixed mikrotik to lan_1 address)|ok|ko|ok|ko|
|4|dhcp address enable/disable then dhcp prefix|ok|ok|ok|ko|

I am not sure that the issue comes from the livebox anymore.

It seems like the live manages the fact that mikrotik has an interface in the Lan_1 network and it delegate anything of the lan_2 network to the mikrotik.

In the other hand it seems weird to me that the mikrotik doesn't handle 2 prefix delegation requests on the same interface.
The delegation asked on the interface M>Lan_1 interface is properly rooted to the M>Lan_2 interface without static routes.

The only manual conf is M>Lan_2 advertised ip.

## Firewall

Did not managed to make the livebox firewall work as intended.
Even in Lan_1. Might be another bug.

## DHCP weird behavior

When deleting dynamic address while dhcp-client disabled for address enabled for prefix.... The address is auto recreated. And it's still written as dynamic.

## 2 Prefixes delegation impossible ?

Why can't I delegate more than 1 prefix to my mikrotik ?

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_instance_port_states</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the firewall port states for a specific Amazon Lightsail instance, the IP addresses allowed to connect to the instance through the ports, and the protocol

### Description

Returns the firewall port states for a specific Amazon Lightsail
instance, the IP addresses allowed to connect to the instance through
the ports, and the protocol.

### Usage

    lightsail_get_instance_port_states(instanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_instance_port_states_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the instance for which to return firewall
port states.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portStates = list(
        list(
          fromPort = 123,
          toPort = 123,
          protocol = "tcp"|"all"|"udp"|"icmp",
          state = "open"|"closed",
          cidrs = list(
            "string"
          ),
          ipv6Cidrs = list(
            "string"
          ),
          cidrListAliases = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_instance_port_states(
      instanceName = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_update_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a listener

### Description

Update a listener.

### Usage

    globalaccelerator_update_listener(ListenerArn, PortRanges, Protocol,
      ClientAffinity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_update_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_listener_:_PortRanges">PortRanges</code></td>
<td><p>The updated list of port ranges for the connections from clients
to the accelerator.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_listener_:_Protocol">Protocol</code></td>
<td><p>The updated protocol for the connections from clients to the
accelerator.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_listener_:_ClientAffinity">ClientAffinity</code></td>
<td><p>Client affinity lets you direct all requests from a user to the
same endpoint, if you have stateful applications, regardless of the port
and protocol of the client request. Client affinity gives you control
over whether to always route each client to the same specific
endpoint.</p>
<p>Global Accelerator uses a consistent-flow hashing algorithm to choose
the optimal endpoint for a connection. If client affinity is
<code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple)
properties—source IP address, source port, destination IP address,
destination port, and protocol—to select the hash value, and then
chooses the best endpoint. However, with this setting, if someone uses
different ports to connect to Global Accelerator, their connections
might not be always routed to the same endpoint because the hash value
changes.</p>
<p>If you want a given client to always be routed to the same endpoint,
set client affinity to <code>SOURCE_IP</code> instead. When you use the
<code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple"
(2-tuple) properties— source (client) IP address and destination IP
address—to select the hash value.</p>
<p>The default value is <code>NONE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Listener = list(
        ListenerArn = "string",
        PortRanges = list(
          list(
            FromPort = 123,
            ToPort = 123
          )
        ),
        Protocol = "TCP"|"UDP",
        ClientAffinity = "NONE"|"SOURCE_IP"
      )
    )

### Request syntax

    svc$update_listener(
      ListenerArn = "string",
      PortRanges = list(
        list(
          FromPort = 123,
          ToPort = 123
        )
      ),
      Protocol = "TCP"|"UDP",
      ClientAffinity = "NONE"|"SOURCE_IP"
    )

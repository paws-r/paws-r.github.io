<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_traffic_mirror_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a Traffic Mirror session

### Description

Modifies a Traffic Mirror session.

### Usage

    ec2_modify_traffic_mirror_session(TrafficMirrorSessionId,
      TrafficMirrorTargetId, TrafficMirrorFilterId, PacketLength,
      SessionNumber, VirtualNetworkId, Description, RemoveFields, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_session_:_TrafficMirrorSessionId">TrafficMirrorSessionId</code></td>
<td><p>[required] The ID of the Traffic Mirror session.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_session_:_TrafficMirrorTargetId">TrafficMirrorTargetId</code></td>
<td><p>The Traffic Mirror target. The target must be in the same VPC as
the source, or have a VPC peering connection with the source.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_session_:_TrafficMirrorFilterId">TrafficMirrorFilterId</code></td>
<td><p>The ID of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_session_:_PacketLength">PacketLength</code></td>
<td><p>The number of bytes in each packet to mirror. These are bytes
after the VXLAN header. To mirror a subset, set this to the length (in
bytes) to mirror. For example, if you set this value to 100, then the
first 100 bytes that meet the filter criteria are copied to the target.
Do not specify this parameter when you want to mirror the entire
packet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_session_:_SessionNumber">SessionNumber</code></td>
<td><p>The session number determines the order in which sessions are
evaluated when an interface is used by multiple sessions. The first
session with a matching filter is the one that mirrors the packets.</p>
<p>Valid values are 1-32766.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_session_:_VirtualNetworkId">VirtualNetworkId</code></td>
<td><p>The virtual network ID of the Traffic Mirror session.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_session_:_Description">Description</code></td>
<td><p>The description to assign to the Traffic Mirror session.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_traffic_mirror_session_:_RemoveFields">RemoveFields</code></td>
<td><p>The properties that you want to remove from the Traffic Mirror
session.</p>
<p>When you remove a property from a Traffic Mirror session, the
property is set to the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_traffic_mirror_session_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorSession = list(
        TrafficMirrorSessionId = "string",
        TrafficMirrorTargetId = "string",
        TrafficMirrorFilterId = "string",
        NetworkInterfaceId = "string",
        OwnerId = "string",
        PacketLength = 123,
        SessionNumber = 123,
        VirtualNetworkId = 123,
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_traffic_mirror_session(
      TrafficMirrorSessionId = "string",
      TrafficMirrorTargetId = "string",
      TrafficMirrorFilterId = "string",
      PacketLength = 123,
      SessionNumber = 123,
      VirtualNetworkId = 123,
      Description = "string",
      RemoveFields = list(
        "packet-length"|"description"|"virtual-network-id"
      ),
      DryRun = TRUE|FALSE
    )

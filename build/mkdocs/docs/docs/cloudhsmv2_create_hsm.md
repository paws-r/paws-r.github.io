<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_create_hsm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster

### Description

Creates a new hardware security module (HSM) in the specified AWS
CloudHSM cluster.

### Usage

    cloudhsmv2_create_hsm(ClusterId, AvailabilityZone, IpAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_create_hsm_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier (ID) of the HSM's cluster. To find the
cluster ID, use <code>describe_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_create_hsm_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>[required] The Availability Zone where you are creating the HSM.
To find the cluster's Availability Zones, use
<code>describe_clusters</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsmv2_create_hsm_:_IpAddress">IpAddress</code></td>
<td><p>The HSM's IP address. If you specify an IP address, use an
available address from the subnet that maps to the Availability Zone
where you are creating the HSM. If you don't specify an IP address, one
is chosen for you from that subnet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Hsm = list(
        AvailabilityZone = "string",
        ClusterId = "string",
        SubnetId = "string",
        EniId = "string",
        EniIp = "string",
        HsmId = "string",
        State = "CREATE_IN_PROGRESS"|"ACTIVE"|"DEGRADED"|"DELETE_IN_PROGRESS"|"DELETED",
        StateMessage = "string"
      )
    )

### Request syntax

    svc$create_hsm(
      ClusterId = "string",
      AvailabilityZone = "string",
      IpAddress = "string"
    )

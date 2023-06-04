<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_delete_hsm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified HSM

### Description

Deletes the specified HSM. To specify an HSM, you can use its identifier
(ID), the IP address of the HSM's elastic network interface (ENI), or
the ID of the HSM's ENI. You need to specify only one of these values.
To find these values, use `describe_clusters`.

### Usage

    cloudhsmv2_delete_hsm(ClusterId, HsmId, EniId, EniIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_delete_hsm_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier (ID) of the cluster that contains the
HSM that you are deleting.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsmv2_delete_hsm_:_HsmId">HsmId</code></td>
<td><p>The identifier (ID) of the HSM that you are deleting.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsmv2_delete_hsm_:_EniId">EniId</code></td>
<td><p>The identifier (ID) of the elastic network interface (ENI) of the
HSM that you are deleting.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsmv2_delete_hsm_:_EniIp">EniIp</code></td>
<td><p>The IP address of the elastic network interface (ENI) of the HSM
that you are deleting.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmId = "string"
    )

### Request syntax

    svc$delete_hsm(
      ClusterId = "string",
      HsmId = "string",
      EniId = "string",
      EniIp = "string"
    )

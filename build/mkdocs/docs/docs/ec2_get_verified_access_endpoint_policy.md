<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_verified_access_endpoint_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the Verified Access policy associated with the endpoint

### Description

Get the Verified Access policy associated with the endpoint.

### Usage

    ec2_get_verified_access_endpoint_policy(VerifiedAccessEndpointId,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_verified_access_endpoint_policy_:_VerifiedAccessEndpointId">VerifiedAccessEndpointId</code></td>
<td><p>[required] The ID of the Verified Access endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_verified_access_endpoint_policy_:_DryRun">DryRun</code></td>
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
      PolicyEnabled = TRUE|FALSE,
      PolicyDocument = "string"
    )

### Request syntax

    svc$get_verified_access_endpoint_policy(
      VerifiedAccessEndpointId = "string",
      DryRun = TRUE|FALSE
    )

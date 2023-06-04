<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_trunk_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API action is currently in limited preview only

### Description

This API action is currently in **limited preview only**. If you are
interested in using this feature, contact your account manager.

Removes an association between a branch network interface with a trunk
network interface.

### Usage

    ec2_disassociate_trunk_interface(AssociationId, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_trunk_interface_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the association</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disassociate_trunk_interface_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to Ensure Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_disassociate_trunk_interface_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE,
      ClientToken = "string"
    )

### Request syntax

    svc$disassociate_trunk_interface(
      AssociationId = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )

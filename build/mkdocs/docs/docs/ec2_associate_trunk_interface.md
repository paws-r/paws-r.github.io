<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_trunk_interface</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API action is currently in limited preview only

### Description

This API action is currently in **limited preview only**. If you are
interested in using this feature, contact your account manager.

Associates a branch network interface with a trunk network interface.

Before you create the association, run the
[create-network-interface](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html)
command and set `--interface-type` to `trunk`. You must also create a
network interface for each branch network interface that you want to
associate with the trunk network interface.

### Usage

    ec2_associate_trunk_interface(BranchInterfaceId, TrunkInterfaceId,
      VlanId, GreKey, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_trunk_interface_:_BranchInterfaceId">BranchInterfaceId</code></td>
<td><p>[required] The ID of the branch network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_trunk_interface_:_TrunkInterfaceId">TrunkInterfaceId</code></td>
<td><p>[required] The ID of the trunk network interface.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_associate_trunk_interface_:_VlanId">VlanId</code></td>
<td><p>The ID of the VLAN. This applies to the VLAN protocol.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_associate_trunk_interface_:_GreKey">GreKey</code></td>
<td><p>The application key. This applies to the GRE protocol.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_associate_trunk_interface_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to Ensure Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_associate_trunk_interface_:_DryRun">DryRun</code></td>
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
      InterfaceAssociation = list(
        AssociationId = "string",
        BranchInterfaceId = "string",
        TrunkInterfaceId = "string",
        InterfaceProtocol = "VLAN"|"GRE",
        VlanId = 123,
        GreKey = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$associate_trunk_interface(
      BranchInterfaceId = "string",
      TrunkInterfaceId = "string",
      VlanId = 123,
      GreKey = 123,
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )

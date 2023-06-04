<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_delete_firewall</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Firewall and its FirewallStatus

### Description

Deletes the specified Firewall and its FirewallStatus. This operation
requires the firewall's `DeleteProtection` flag to be `FALSE`. You can't
revert this operation.

You can check whether a firewall is in use by reviewing the route tables
for the Availability Zones where you have firewall subnet mappings.
Retrieve the subnet mappings by calling `describe_firewall`. You define
and update the route tables through Amazon VPC. As needed, update the
route tables for the zones to remove the firewall endpoints. When the
route tables no longer use the firewall endpoints, you can remove the
firewall safely.

To delete a firewall, remove the delete protection if you need to using
`update_firewall_delete_protection`, then delete the firewall by calling
`delete_firewall`.

### Usage

    networkfirewall_delete_firewall(FirewallName, FirewallArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_delete_firewall_:_FirewallName">FirewallName</code></td>
<td><p>The descriptive name of the firewall. You can't change the name
of a firewall after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_delete_firewall_:_FirewallArn">FirewallArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Firewall = list(
        FirewallName = "string",
        FirewallArn = "string",
        FirewallPolicyArn = "string",
        VpcId = "string",
        SubnetMappings = list(
          list(
            SubnetId = "string",
            IPAddressType = "DUALSTACK"|"IPV4"|"IPV6"
          )
        ),
        DeleteProtection = TRUE|FALSE,
        SubnetChangeProtection = TRUE|FALSE,
        FirewallPolicyChangeProtection = TRUE|FALSE,
        Description = "string",
        FirewallId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        )
      ),
      FirewallStatus = list(
        Status = "PROVISIONING"|"DELETING"|"READY",
        ConfigurationSyncStateSummary = "PENDING"|"IN_SYNC"|"CAPACITY_CONSTRAINED",
        SyncStates = list(
          list(
            Attachment = list(
              SubnetId = "string",
              EndpointId = "string",
              Status = "CREATING"|"DELETING"|"FAILED"|"ERROR"|"SCALING"|"READY",
              StatusMessage = "string"
            ),
            Config = list(
              list(
                SyncStatus = "PENDING"|"IN_SYNC"|"CAPACITY_CONSTRAINED",
                UpdateToken = "string"
              )
            )
          )
        ),
        CapacityUsageSummary = list(
          CIDRs = list(
            AvailableCIDRCount = 123,
            UtilizedCIDRCount = 123,
            IPSetReferences = list(
              list(
                ResolvedCIDRCount = 123
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$delete_firewall(
      FirewallName = "string",
      FirewallArn = "string"
    )

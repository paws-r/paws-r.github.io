<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_delete_firewall_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified FirewallPolicy

### Description

Deletes the specified FirewallPolicy.

### Usage

    networkfirewall_delete_firewall_policy(FirewallPolicyName,
      FirewallPolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_delete_firewall_policy_:_FirewallPolicyName">FirewallPolicyName</code></td>
<td><p>The descriptive name of the firewall policy. You can't change the
name of a firewall policy after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_delete_firewall_policy_:_FirewallPolicyArn">FirewallPolicyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall policy.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallPolicyResponse = list(
        FirewallPolicyName = "string",
        FirewallPolicyArn = "string",
        FirewallPolicyId = "string",
        Description = "string",
        FirewallPolicyStatus = "ACTIVE"|"DELETING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ConsumedStatelessRuleCapacity = 123,
        ConsumedStatefulRuleCapacity = 123,
        NumberOfAssociations = 123,
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_firewall_policy(
      FirewallPolicyName = "string",
      FirewallPolicyArn = "string"
    )

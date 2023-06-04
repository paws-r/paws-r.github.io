<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_delete_rule_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified RuleGroup

### Description

Deletes the specified RuleGroup.

### Usage

    networkfirewall_delete_rule_group(RuleGroupName, RuleGroupArn, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_delete_rule_group_:_RuleGroupName">RuleGroupName</code></td>
<td><p>The descriptive name of the rule group. You can't change the name
of a rule group after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_delete_rule_group_:_RuleGroupArn">RuleGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the rule group.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code id="networkfirewall_delete_rule_group_:_Type">Type</code></td>
<td><p>Indicates whether the rule group is stateless or stateful. If the
rule group is stateless, it contains stateless rules. If it is stateful,
it contains stateful rules.</p>
<p>This setting is required for requests that do not include the
<code>RuleGroupARN</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleGroupResponse = list(
        RuleGroupArn = "string",
        RuleGroupName = "string",
        RuleGroupId = "string",
        Description = "string",
        Type = "STATELESS"|"STATEFUL",
        Capacity = 123,
        RuleGroupStatus = "ACTIVE"|"DELETING",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ConsumedCapacity = 123,
        NumberOfAssociations = 123,
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        ),
        SourceMetadata = list(
          SourceArn = "string",
          SourceUpdateToken = "string"
        ),
        SnsTopic = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_rule_group(
      RuleGroupName = "string",
      RuleGroupArn = "string",
      Type = "STATELESS"|"STATEFUL"
    )

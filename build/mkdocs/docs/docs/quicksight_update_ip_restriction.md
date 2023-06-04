<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_ip_restriction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the content and status of IP rules

### Description

Updates the content and status of IP rules. To use this operation, you
must provide the entire map of rules. You can use the
`describe_ip_restriction` operation to get the current rule map.

### Usage

    quicksight_update_ip_restriction(AwsAccountId, IpRestrictionRuleMap,
      Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_ip_restriction_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the IP rules.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_ip_restriction_:_IpRestrictionRuleMap">IpRestrictionRuleMap</code></td>
<td><p>A map that describes the updated IP rules with CIDR ranges and
descriptions.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_ip_restriction_:_Enabled">Enabled</code></td>
<td><p>A value that specifies whether IP rules are turned on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AwsAccountId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_ip_restriction(
      AwsAccountId = "string",
      IpRestrictionRuleMap = list(
        "string"
      ),
      Enabled = TRUE|FALSE
    )

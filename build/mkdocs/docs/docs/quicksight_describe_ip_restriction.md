<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_ip_restriction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a summary and status of IP rules

### Description

Provides a summary and status of IP rules.

### Usage

    quicksight_describe_ip_restriction(AwsAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_ip_restriction_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the IP rules.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AwsAccountId = "string",
      IpRestrictionRuleMap = list(
        "string"
      ),
      Enabled = TRUE|FALSE,
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_ip_restriction(
      AwsAccountId = "string"
    )

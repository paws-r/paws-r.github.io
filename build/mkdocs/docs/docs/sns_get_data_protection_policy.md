<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_data_protection_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified inline DataProtectionPolicy document that is stored in the specified Amazon SNS topic

### Description

Retrieves the specified inline `DataProtectionPolicy` document that is
stored in the specified Amazon SNS topic.

### Usage

    sns_get_data_protection_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_get_data_protection_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the topic whose
<code>DataProtectionPolicy</code> you want to get.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the Amazon Web Services General
Reference.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataProtectionPolicy = "string"
    )

### Request syntax

    svc$get_data_protection_policy(
      ResourceArn = "string"
    )

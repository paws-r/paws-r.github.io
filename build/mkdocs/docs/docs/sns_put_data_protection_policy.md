<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_put_data_protection_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates an inline policy document that is stored in the specified Amazon SNS topic

### Description

Adds or updates an inline policy document that is stored in the
specified Amazon SNS topic.

### Usage

    sns_put_data_protection_policy(ResourceArn, DataProtectionPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_put_data_protection_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the topic whose
<code>DataProtectionPolicy</code> you want to add or update.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the Amazon Web Services General
Reference.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_put_data_protection_policy_:_DataProtectionPolicy">DataProtectionPolicy</code></td>
<td><p>[required] The JSON serialization of the topic's
<code>DataProtectionPolicy</code>.</p>
<p>The <code>DataProtectionPolicy</code> must be in JSON string
format.</p>
<p>Length Constraints: Maximum length of 30,720.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_data_protection_policy(
      ResourceArn = "string",
      DataProtectionPolicy = "string"
    )

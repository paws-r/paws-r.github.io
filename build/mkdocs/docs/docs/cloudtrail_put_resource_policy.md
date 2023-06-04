<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a resource-based permission policy to a CloudTrail channel that is used for an integration with an event source outside of Amazon Web Services

### Description

Attaches a resource-based permission policy to a CloudTrail channel that
is used for an integration with an event source outside of Amazon Web
Services. For more information about resource-based policies, see
[CloudTrail resource-based policy
examples](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html)
in the *CloudTrail User Guide*.

### Usage

    cloudtrail_put_resource_policy(ResourceArn, ResourcePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CloudTrail
channel attached to the resource-based policy. The following is the
format of a resource ARN:
<code>arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_put_resource_policy_:_ResourcePolicy">ResourcePolicy</code></td>
<td><p>[required] A JSON-formatted string for an Amazon Web Services
resource-based policy.</p>
<p>The following are requirements for the resource policy:</p>
<ul>
<li><p>Contains only one action: cloudtrail-data:PutAuditEvents</p></li>
<li><p>Contains at least one statement. The policy can have a maximum of
20 statements.</p></li>
<li><p>Each statement contains at least one principal. A statement can
have a maximum of 50 principals.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      ResourcePolicy = "string"
    )

### Request syntax

    svc$put_resource_policy(
      ResourceArn = "string",
      ResourcePolicy = "string"
    )

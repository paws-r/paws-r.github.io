<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_register_on_premises_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an on-premises instance

### Description

Registers an on-premises instance.

Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in
the request. You cannot use both.

### Usage

    codedeploy_register_on_premises_instance(instanceName, iamSessionArn,
      iamUserArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_register_on_premises_instance_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the on-premises instance to
register.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_register_on_premises_instance_:_iamSessionArn">iamSessionArn</code></td>
<td><p>The ARN of the IAM session to associate with the on-premises
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_register_on_premises_instance_:_iamUserArn">iamUserArn</code></td>
<td><p>The ARN of the IAM user to associate with the on-premises
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_on_premises_instance(
      instanceName = "string",
      iamSessionArn = "string",
      iamUserArn = "string"
    )

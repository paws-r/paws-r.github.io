<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_put_notification_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Designates the IAM role and Amazon Simple Notification Service (SNS) topic that Firewall Manager uses to record SNS logs

### Description

Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that Firewall Manager uses to record SNS logs.

To perform this action outside of the console, you must first configure
the SNS topic's access policy to allow the `SnsRoleName` to publish SNS
logs. If the `SnsRoleName` provided is a role other than the
`AWSServiceRoleForFMS` service-linked role, this role must have a trust
relationship configured to allow the Firewall Manager service principal
`fms.amazonaws.com` to assume this role. For information about
configuring an SNS access policy, see [Service roles for Firewall
Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service)
in the *Firewall Manager Developer Guide*.

### Usage

    fms_put_notification_channel(SnsTopicArn, SnsRoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_put_notification_channel_:_SnsTopicArn">SnsTopicArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SNS topic that
collects notifications from Firewall Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_put_notification_channel_:_SnsRoleName">SnsRoleName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
allows Amazon SNS to record Firewall Manager activity.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_notification_channel(
      SnsTopicArn = "string",
      SnsRoleName = "string"
    )

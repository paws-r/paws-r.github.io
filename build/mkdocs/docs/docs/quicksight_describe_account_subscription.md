<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_account_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the DescribeAccountSubscription operation to receive a description of an Amazon QuickSight account's subscription

### Description

Use the DescribeAccountSubscription operation to receive a description
of an Amazon QuickSight account's subscription. A successful API call
returns an `AccountInfo` object that includes an account's name,
subscription status, authentication type, edition, and notification
email address.

### Usage

    quicksight_describe_account_subscription(AwsAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_account_subscription_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with
your Amazon QuickSight account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountInfo = list(
        AccountName = "string",
        Edition = "STANDARD"|"ENTERPRISE"|"ENTERPRISE_AND_Q",
        NotificationEmail = "string",
        AuthenticationType = "string",
        AccountSubscriptionStatus = "string"
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_account_subscription(
      AwsAccountId = "string"
    )

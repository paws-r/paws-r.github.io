<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_account_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the DeleteAccountSubscription operation to delete an Amazon QuickSight account

### Description

Use the `delete_account_subscription` operation to delete an Amazon
QuickSight account. This operation will result in an error message if
you have configured your account termination protection settings to
`True`. To change this setting and delete your account, call the
`update_account_settings` API and set the value of the
`TerminationProtectionEnabled` parameter to `False`, then make another
call to the `delete_account_subscription` API.

### Usage

    quicksight_delete_account_subscription(AwsAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_account_subscription_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account that
you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_account_subscription(
      AwsAccountId = "string"
    )

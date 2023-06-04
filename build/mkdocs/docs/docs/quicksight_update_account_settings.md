<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Amazon QuickSight settings in your Amazon Web Services account

### Description

Updates the Amazon QuickSight settings in your Amazon Web Services
account.

### Usage

    quicksight_update_account_settings(AwsAccountId, DefaultNamespace,
      NotificationEmail, TerminationProtectionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_account_settings_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the Amazon QuickSight settings that you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_account_settings_:_DefaultNamespace">DefaultNamespace</code></td>
<td><p>[required] The default namespace for this Amazon Web Services
account. Currently, the default is <code>default</code>. IAM users that
register for the first time with Amazon QuickSight provide an email
address that becomes associated with the default namespace.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_account_settings_:_NotificationEmail">NotificationEmail</code></td>
<td><p>The email address that you want Amazon QuickSight to send
notifications to regarding your Amazon Web Services account or Amazon
QuickSight subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_account_settings_:_TerminationProtectionEnabled">TerminationProtectionEnabled</code></td>
<td><p>A boolean value that determines whether or not an Amazon
QuickSight account can be deleted. A <code>True</code> value doesn't
allow the account to be deleted and results in an error message if a
user tries to make a <code>delete_account_subscription</code> request. A
<code>False</code> value will allow the account to be deleted.</p></td>
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

    svc$update_account_settings(
      AwsAccountId = "string",
      DefaultNamespace = "string",
      NotificationEmail = "string",
      TerminationProtectionEnabled = TRUE|FALSE
    )

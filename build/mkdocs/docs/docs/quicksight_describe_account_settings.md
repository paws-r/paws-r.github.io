<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the settings that were used when your Amazon QuickSight subscription was first created in this Amazon Web Services account

### Description

Describes the settings that were used when your Amazon QuickSight
subscription was first created in this Amazon Web Services account.

### Usage

    quicksight_describe_account_settings(AwsAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_account_settings_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the settings that you want to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountSettings = list(
        AccountName = "string",
        Edition = "STANDARD"|"ENTERPRISE"|"ENTERPRISE_AND_Q",
        DefaultNamespace = "string",
        NotificationEmail = "string",
        PublicSharingEnabled = TRUE|FALSE,
        TerminationProtectionEnabled = TRUE|FALSE
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_account_settings(
      AwsAccountId = "string"
    )

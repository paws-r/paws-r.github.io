<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_public_sharing_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the UpdatePublicSharingSettings operation to turn on or turn off the public sharing settings of an Amazon QuickSight dashboard

### Description

Use the `update_public_sharing_settings` operation to turn on or turn
off the public sharing settings of an Amazon QuickSight dashboard.

To use this operation, turn on session capacity pricing for your Amazon
QuickSight account.

Before you can turn on public sharing on your account, make sure to give
public sharing permissions to an administrative user in the Identity and
Access Management (IAM) console. For more information on using IAM with
Amazon QuickSight, see [Using Amazon QuickSight with
IAM](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html)
in the *Amazon QuickSight User Guide*.

### Usage

    quicksight_update_public_sharing_settings(AwsAccountId,
      PublicSharingEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_public_sharing_settings_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with
your Amazon QuickSight subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_public_sharing_settings_:_PublicSharingEnabled">PublicSharingEnabled</code></td>
<td><p>A Boolean value that indicates whether public sharing is turned
on for an Amazon QuickSight account.</p></td>
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

    svc$update_public_sharing_settings(
      AwsAccountId = "string",
      PublicSharingEnabled = TRUE|FALSE
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_put_account_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to set the account preference in the current Amazon Web Services Region to use long 17 character (63 bit) or short 8 character (32 bit) resource IDs for new EFS file system and mount target resources

### Description

Use this operation to set the account preference in the current Amazon
Web Services Region to use long 17 character (63 bit) or short 8
character (32 bit) resource IDs for new EFS file system and mount target
resources. All existing resource IDs are not affected by any changes you
make. You can set the ID preference during the opt-in period as EFS
transitions to long resource IDs. For more information, see [Managing
Amazon EFS resource IDs](https://docs.aws.amazon.com/efs/latest/ug/).

Starting in October, 2021, you will receive an error if you try to set
the account preference to use the short 8 character format resource ID.
Contact Amazon Web Services support if you receive an error and must use
short IDs for file system and mount target resources.

### Usage

    efs_put_account_preferences(ResourceIdType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_put_account_preferences_:_ResourceIdType">ResourceIdType</code></td>
<td><p>[required] Specifies the EFS resource ID preference to set for
the user's Amazon Web Services account, in the current Amazon Web
Services Region, either <code>LONG_ID</code> (17 characters), or
<code>SHORT_ID</code> (8 characters).</p>
<p>Starting in October, 2021, you will receive an error when setting the
account preference to <code>SHORT_ID</code>. Contact Amazon Web Services
support if you receive an error and must use short IDs for file system
and mount target resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceIdPreference = list(
        ResourceIdType = "LONG_ID"|"SHORT_ID",
        Resources = list(
          "FILE_SYSTEM"|"MOUNT_TARGET"
        )
      )
    )

### Request syntax

    svc$put_account_preferences(
      ResourceIdType = "LONG_ID"|"SHORT_ID"
    )

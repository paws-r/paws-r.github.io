<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_global_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates whether the Amazon Web Services account is opted in to cross-account backup

### Description

Updates whether the Amazon Web Services account is opted in to
cross-account backup. Returns an error if the account is not an
Organizations management account. Use the `describe_global_settings` API
to determine the current settings.

### Usage

    backup_update_global_settings(GlobalSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_global_settings_:_GlobalSettings">GlobalSettings</code></td>
<td><p>A value for <code>isCrossAccountBackupEnabled</code> and a
Region. Example: <code
style="white-space: pre;">⁠update-global-settings --global-settings isCrossAccountBackupEnabled=false --region us-west-2⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_global_settings(
      GlobalSettings = list(
        "string"
      )
    )

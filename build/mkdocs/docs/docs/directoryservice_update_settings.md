<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configurable settings for the specified directory

### Description

Updates the configurable settings for the specified directory.

### Usage

    directoryservice_update_settings(DirectoryId, Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_settings_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which to update
settings.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_settings_:_Settings">Settings</code></td>
<td><p>[required] The list of Setting objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryId = "string"
    )

### Request syntax

    svc$update_settings(
      DirectoryId = "string",
      Settings = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )

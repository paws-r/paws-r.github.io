<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_directory_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Directory Config object from AppStream 2

### Description

Deletes the specified Directory Config object from AppStream 2.0. This
object includes the information required to join streaming instances to
an Active Directory domain.

### Usage

    appstream_delete_directory_config(DirectoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_delete_directory_config_:_DirectoryName">DirectoryName</code></td>
<td><p>[required] The name of the directory configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_directory_config(
      DirectoryName = "string"
    )

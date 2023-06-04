<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_remove_region</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops all replication and removes the domain controllers from the specified Region

### Description

Stops all replication and removes the domain controllers from the
specified Region. You cannot remove the primary Region with this
operation. Instead, use the `delete_directory` API.

### Usage

    directoryservice_remove_region(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_remove_region_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory for which you want to
remove Region replication.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_region(
      DirectoryId = "string"
    )

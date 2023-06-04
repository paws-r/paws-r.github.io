<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_directory_setup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the directory for a particular update type

### Description

Updates the directory for a particular update type.

### Usage

    directoryservice_update_directory_setup(DirectoryId, UpdateType,
      OSUpdateSettings, CreateSnapshotBeforeUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_directory_setup_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory on which you want to
perform the update.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_directory_setup_:_UpdateType">UpdateType</code></td>
<td><p>[required] The type of update that needs to be performed on the
directory. For example, OS.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_update_directory_setup_:_OSUpdateSettings">OSUpdateSettings</code></td>
<td><p>The settings for the OS update that needs to be performed on the
directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_directory_setup_:_CreateSnapshotBeforeUpdate">CreateSnapshotBeforeUpdate</code></td>
<td><p>The boolean that specifies if a snapshot for the directory needs
to be taken before updating the directory.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_directory_setup(
      DirectoryId = "string",
      UpdateType = "OS",
      OSUpdateSettings = list(
        OSVersion = "SERVER_2012"|"SERVER_2019"
      ),
      CreateSnapshotBeforeUpdate = TRUE|FALSE
    )

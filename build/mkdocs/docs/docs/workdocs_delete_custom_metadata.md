<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_custom_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes custom metadata from the specified resource

### Description

Deletes custom metadata from the specified resource.

### Usage

    workdocs_delete_custom_metadata(AuthenticationToken, ResourceId,
      VersionId, Keys, DeleteAll)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_custom_metadata_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_custom_metadata_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource, either a document or
folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_delete_custom_metadata_:_VersionId">VersionId</code></td>
<td><p>The ID of the version, if the custom metadata is being deleted
from a document version.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_delete_custom_metadata_:_Keys">Keys</code></td>
<td><p>List of properties to remove.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_delete_custom_metadata_:_DeleteAll">DeleteAll</code></td>
<td><p>Flag to indicate removal of all custom metadata properties from
the specified resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_metadata(
      AuthenticationToken = "string",
      ResourceId = "string",
      VersionId = "string",
      Keys = list(
        "string"
      ),
      DeleteAll = TRUE|FALSE
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_custom_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more custom properties to the specified resource (a folder, document, or version)

### Description

Adds one or more custom properties to the specified resource (a folder,
document, or version).

### Usage

    workdocs_create_custom_metadata(AuthenticationToken, ResourceId,
      VersionId, CustomMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_custom_metadata_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_custom_metadata_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_custom_metadata_:_VersionId">VersionId</code></td>
<td><p>The ID of the version, if the custom metadata is being added to a
document version.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_custom_metadata_:_CustomMetadata">CustomMetadata</code></td>
<td><p>[required] Custom metadata in the form of name-value
pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_custom_metadata(
      AuthenticationToken = "string",
      ResourceId = "string",
      VersionId = "string",
      CustomMetadata = list(
        "string"
      )
    )

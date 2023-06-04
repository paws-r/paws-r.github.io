<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_delete_lf_tag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified LF-tag given a key name

### Description

Deletes the specified LF-tag given a key name. If the input parameter
tag key was not found, then the operation will throw an exception. When
you delete an LF-tag, the `LFTagPolicy` attached to the LF-tag becomes
invalid. If the deleted LF-tag was still assigned to any resource, the
tag policy attach to the deleted LF-tag will no longer be applied to the
resource.

### Usage

    lakeformation_delete_lf_tag(CatalogId, TagKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_delete_lf_tag_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code id="lakeformation_delete_lf_tag_:_TagKey">TagKey</code></td>
<td><p>[required] The key-name for the LF-tag to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_lf_tag(
      CatalogId = "string",
      TagKey = "string"
    )

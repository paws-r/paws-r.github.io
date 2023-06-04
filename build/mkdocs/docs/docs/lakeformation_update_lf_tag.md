<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_update_lf_tag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the list of possible values for the specified LF-tag key

### Description

Updates the list of possible values for the specified LF-tag key. If the
LF-tag does not exist, the operation throws an EntityNotFoundException.
The values in the delete key values will be deleted from list of
possible values. If any value in the delete key values is attached to a
resource, then API errors out with a 400 Exception - "Update not
allowed". Untag the attribute before deleting the LF-tag key's value.

### Usage

    lakeformation_update_lf_tag(CatalogId, TagKey, TagValuesToDelete,
      TagValuesToAdd)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_update_lf_tag_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code id="lakeformation_update_lf_tag_:_TagKey">TagKey</code></td>
<td><p>[required] The key-name for the LF-tag for which to add or delete
values.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_update_lf_tag_:_TagValuesToDelete">TagValuesToDelete</code></td>
<td><p>A list of LF-tag values to delete from the LF-tag.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_lf_tag_:_TagValuesToAdd">TagValuesToAdd</code></td>
<td><p>A list of LF-tag values to add from the LF-tag.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_lf_tag(
      CatalogId = "string",
      TagKey = "string",
      TagValuesToDelete = list(
        "string"
      ),
      TagValuesToAdd = list(
        "string"
      )
    )

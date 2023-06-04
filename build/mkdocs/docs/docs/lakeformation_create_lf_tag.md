<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_create_lf_tag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an LF-tag with the specified name and values

### Description

Creates an LF-tag with the specified name and values.

### Usage

    lakeformation_create_lf_tag(CatalogId, TagKey, TagValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_create_lf_tag_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code id="lakeformation_create_lf_tag_:_TagKey">TagKey</code></td>
<td><p>[required] The key-name for the LF-tag.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_create_lf_tag_:_TagValues">TagValues</code></td>
<td><p>[required] A list of possible values an attribute can
take.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_lf_tag(
      CatalogId = "string",
      TagKey = "string",
      TagValues = list(
        "string"
      )
    )

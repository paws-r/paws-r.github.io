<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_lf_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists LF-tags that the requester has permission to view

### Description

Lists LF-tags that the requester has permission to view.

### Usage

    lakeformation_list_lf_tags(CatalogId, ResourceShareType, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_lf_tags_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_lf_tags_:_ResourceShareType">ResourceShareType</code></td>
<td><p>If resource share type is <code>ALL</code>, returns both
in-account LF-tags and shared LF-tags that the requester has permission
to view. If resource share type is <code>FOREIGN</code>, returns all
share LF-tags that the requester can view. If no resource share type is
passed, lists LF-tags in the given catalog ID that the requester has
permission to view.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_lf_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_lf_tags_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
this list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LFTags = list(
        list(
          CatalogId = "string",
          TagKey = "string",
          TagValues = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lf_tags(
      CatalogId = "string",
      ResourceShareType = "FOREIGN"|"ALL",
      MaxResults = 123,
      NextToken = "string"
    )

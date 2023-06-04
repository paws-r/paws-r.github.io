<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_search_tables_by_lf_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation allows a search on TABLE resources by LFTags

### Description

This operation allows a search on `TABLE` resources by `LFTag`s. This
will be used by admins who want to grant user permissions on certain
LF-tags. Before making a grant, the admin can use
`search_tables_by_lf_tags` to find all resources where the given
`LFTag`s are valid to verify whether the returned resources can be
shared.

### Usage

    lakeformation_search_tables_by_lf_tags(NextToken, MaxResults, CatalogId,
      Expression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_search_tables_by_lf_tags_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
this list.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_search_tables_by_lf_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_search_tables_by_lf_tags_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_search_tables_by_lf_tags_:_Expression">Expression</code></td>
<td><p>[required] A list of conditions (<code>LFTag</code> structures)
to search for in table resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      TableList = list(
        list(
          Table = list(
            CatalogId = "string",
            DatabaseName = "string",
            Name = "string",
            TableWildcard = list()
          ),
          LFTagOnDatabase = list(
            list(
              CatalogId = "string",
              TagKey = "string",
              TagValues = list(
                "string"
              )
            )
          ),
          LFTagsOnTable = list(
            list(
              CatalogId = "string",
              TagKey = "string",
              TagValues = list(
                "string"
              )
            )
          ),
          LFTagsOnColumns = list(
            list(
              Name = "string",
              LFTags = list(
                list(
                  CatalogId = "string",
                  TagKey = "string",
                  TagValues = list(
                    "string"
                  )
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$search_tables_by_lf_tags(
      NextToken = "string",
      MaxResults = 123,
      CatalogId = "string",
      Expression = list(
        list(
          TagKey = "string",
          TagValues = list(
            "string"
          )
        )
      )
    )

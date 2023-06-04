<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_resource_lf_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the LF-tags applied to a resource

### Description

Returns the LF-tags applied to a resource.

### Usage

    lakeformation_get_resource_lf_tags(CatalogId, Resource,
      ShowAssignedLFTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_resource_lf_tags_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_resource_lf_tags_:_Resource">Resource</code></td>
<td><p>[required] The database, table, or column resource for which you
want to return LF-tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_resource_lf_tags_:_ShowAssignedLFTags">ShowAssignedLFTags</code></td>
<td><p>Indicates whether to show the assigned LF-tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_resource_lf_tags(
      CatalogId = "string",
      Resource = list(
        Catalog = list(),
        Database = list(
          CatalogId = "string",
          Name = "string"
        ),
        Table = list(
          CatalogId = "string",
          DatabaseName = "string",
          Name = "string",
          TableWildcard = list()
        ),
        TableWithColumns = list(
          CatalogId = "string",
          DatabaseName = "string",
          Name = "string",
          ColumnNames = list(
            "string"
          ),
          ColumnWildcard = list(
            ExcludedColumnNames = list(
              "string"
            )
          )
        ),
        DataLocation = list(
          CatalogId = "string",
          ResourceArn = "string"
        ),
        DataCellsFilter = list(
          TableCatalogId = "string",
          DatabaseName = "string",
          TableName = "string",
          Name = "string"
        ),
        LFTag = list(
          CatalogId = "string",
          TagKey = "string",
          TagValues = list(
            "string"
          )
        ),
        LFTagPolicy = list(
          CatalogId = "string",
          ResourceType = "DATABASE"|"TABLE",
          Expression = list(
            list(
              TagKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        )
      ),
      ShowAssignedLFTags = TRUE|FALSE
    )

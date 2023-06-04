<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_user_defined_functions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves multiple function definitions from the Data Catalog

### Description

Retrieves multiple function definitions from the Data Catalog.

### Usage

    glue_get_user_defined_functions(CatalogId, DatabaseName, Pattern,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_user_defined_functions_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the functions to be retrieved
are located. If none is provided, the Amazon Web Services account ID is
used by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_user_defined_functions_:_DatabaseName">DatabaseName</code></td>
<td><p>The name of the catalog database where the functions are located.
If none is provided, functions from all the databases across the catalog
will be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_user_defined_functions_:_Pattern">Pattern</code></td>
<td><p>[required] An optional function-name pattern string that filters
the function definitions returned.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_user_defined_functions_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_user_defined_functions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of functions to return in one
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserDefinedFunctions = list(
        list(
          FunctionName = "string",
          DatabaseName = "string",
          ClassName = "string",
          OwnerName = "string",
          OwnerType = "USER"|"ROLE"|"GROUP",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          ResourceUris = list(
            list(
              ResourceType = "JAR"|"FILE"|"ARCHIVE",
              Uri = "string"
            )
          ),
          CatalogId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_user_defined_functions(
      CatalogId = "string",
      DatabaseName = "string",
      Pattern = "string",
      NextToken = "string",
      MaxResults = 123
    )

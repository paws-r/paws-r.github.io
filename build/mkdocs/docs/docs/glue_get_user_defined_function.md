<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_user_defined_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a specified function definition from the Data Catalog

### Description

Retrieves a specified function definition from the Data Catalog.

### Usage

    glue_get_user_defined_function(CatalogId, DatabaseName, FunctionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_user_defined_function_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the function to be retrieved is
located. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_user_defined_function_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database where the function is
located.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_user_defined_function_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the function.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserDefinedFunction = list(
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
    )

### Request syntax

    svc$get_user_defined_function(
      CatalogId = "string",
      DatabaseName = "string",
      FunctionName = "string"
    )

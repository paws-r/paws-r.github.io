<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_data_catalog</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the specified data catalog

### Description

Returns the specified data catalog.

### Usage

    athena_get_data_catalog(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_get_data_catalog_:_Name">Name</code></td>
<td><p>[required] The name of the data catalog to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataCatalog = list(
        Name = "string",
        Description = "string",
        Type = "LAMBDA"|"GLUE"|"HIVE",
        Parameters = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_data_catalog(
      Name = "string"
    )

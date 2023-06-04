<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of schemas associated with the account

### Description

Returns the list of schemas associated with the account. The response
provides the properties for each schema, including the Amazon Resource
Name (ARN). For more information on schemas, see `create_schema`.

### Usage

    personalize_list_schemas(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_schemas_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_schemas</code> for getting the next set of schemas (if they
exist).</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_schemas_:_maxResults">maxResults</code></td>
<td><p>The maximum number of schemas to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      schemas = list(
        list(
          name = "string",
          schemaArn = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_schemas(
      nextToken = "string",
      maxResults = 123
    )

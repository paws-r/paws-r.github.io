<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_custom_data_identifiers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a subset of information about all the custom data identifiers for an account

### Description

Retrieves a subset of information about all the custom data identifiers
for an account.

### Usage

    macie2_list_custom_data_identifiers(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_custom_data_identifiers_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_custom_data_identifiers_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          id = "string",
          name = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_custom_data_identifiers(
      maxResults = 123,
      nextToken = "string"
    )

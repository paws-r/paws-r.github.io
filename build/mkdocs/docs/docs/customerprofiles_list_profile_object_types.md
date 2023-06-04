<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_profile_object_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the templates available within the service

### Description

Lists all of the templates available within the service.

### Usage

    customerprofiles_list_profile_object_types(DomainName, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_object_types_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_profile_object_types_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_object_types_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          ObjectTypeName = "string",
          Description = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_profile_object_types(
      DomainName = "string",
      NextToken = "string",
      MaxResults = 123
    )

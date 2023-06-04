<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_list_associated_attribute_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all attribute groups that are associated with specified application

### Description

Lists all attribute groups that are associated with specified
application. Results are paginated.

### Usage

    appregistry_list_associated_attribute_groups(application, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_list_associated_attribute_groups_:_application">application</code></td>
<td><p>[required] The name or ID of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_list_associated_attribute_groups_:_nextToken">nextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_list_associated_attribute_groups_:_maxResults">maxResults</code></td>
<td><p>The upper bound of the number of results to return (cannot exceed
25). If this parameter is omitted, it defaults to 25. This value is
optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributeGroups = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_associated_attribute_groups(
      application = "string",
      nextToken = "string",
      maxResults = 123
    )

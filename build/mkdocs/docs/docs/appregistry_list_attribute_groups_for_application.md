<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_list_attribute_groups_for_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the details of all attribute groups associated with a specific application

### Description

Lists the details of all attribute groups associated with a specific
application. The results display in pages.

### Usage

    appregistry_list_attribute_groups_for_application(application,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_list_attribute_groups_for_application_:_application">application</code></td>
<td><p>[required] The name or ID of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_list_attribute_groups_for_application_:_nextToken">nextToken</code></td>
<td><p>This token retrieves the next page of results after a previous
API call.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_list_attribute_groups_for_application_:_maxResults">maxResults</code></td>
<td><p>The upper bound of the number of results to return. The value
cannot exceed 25. If you omit this parameter, it defaults to 25. This
value is optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributeGroupsDetails = list(
        list(
          id = "string",
          arn = "string",
          name = "string",
          createdBy = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_attribute_groups_for_application(
      application = "string",
      nextToken = "string",
      maxResults = 123
    )

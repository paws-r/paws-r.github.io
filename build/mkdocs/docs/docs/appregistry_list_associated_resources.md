<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_list_associated_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the resources that are associated with the specified application

### Description

Lists all of the resources that are associated with the specified
application. Results are paginated.

If you share an application, and a consumer account associates a tag
query to the application, all of the users who can access the
application can also view the tag values in all accounts that are
associated with it using this API.

### Usage

    appregistry_list_associated_resources(application, nextToken,
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
id="appregistry_list_associated_resources_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_list_associated_resources_:_nextToken">nextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_list_associated_resources_:_maxResults">maxResults</code></td>
<td><p>The upper bound of the number of results to return (cannot exceed
25). If this parameter is omitted, it defaults to 25. This value is
optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resources = list(
        list(
          name = "string",
          arn = "string",
          resourceType = "CFN_STACK"|"RESOURCE_TAG_VALUE",
          resourceDetails = list(
            tagValue = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_associated_resources(
      application = "string",
      nextToken = "string",
      maxResults = 123
    )

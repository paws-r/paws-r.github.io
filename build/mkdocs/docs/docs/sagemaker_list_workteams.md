<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_workteams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of private work teams that you have defined in a region

### Description

Gets a list of private work teams that you have defined in a region. The
list may be empty if no work team satisfies the filter specified in the
`NameContains` parameter.

### Usage

    sagemaker_list_workteams(SortBy, SortOrder, NameContains, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_workteams_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_workteams_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_workteams_:_NameContains">NameContains</code></td>
<td><p>A string in the work team's name. This filter returns only work
teams whose name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_workteams_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_workteams</code> request
was truncated, the response includes a <code>NextToken</code>. To
retrieve the next set of labeling jobs, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_workteams_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of work teams to return in each page of the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workteams = list(
        list(
          WorkteamName = "string",
          MemberDefinitions = list(
            list(
              CognitoMemberDefinition = list(
                UserPool = "string",
                UserGroup = "string",
                ClientId = "string"
              ),
              OidcMemberDefinition = list(
                Groups = list(
                  "string"
                )
              )
            )
          ),
          WorkteamArn = "string",
          WorkforceArn = "string",
          ProductListingIds = list(
            "string"
          ),
          Description = "string",
          SubDomain = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          NotificationConfiguration = list(
            NotificationTopicArn = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workteams(
      SortBy = "Name"|"CreateDate",
      SortOrder = "Ascending"|"Descending",
      NameContains = "string",
      NextToken = "string",
      MaxResults = 123
    )

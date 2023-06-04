<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_search_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches users in an Amazon Connect instance, with optional filtering

### Description

Searches users in an Amazon Connect instance, with optional filtering.

`AfterContactWorkTimeLimit` is returned in milliseconds.

### Usage

    connect_search_users(InstanceId, NextToken, MaxResults, SearchFilter,
      SearchCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_search_users_:_InstanceId">InstanceId</code></td>
<td><p>The identifier of the Amazon Connect instance. You can <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_search_users_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_search_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_users_:_SearchFilter">SearchFilter</code></td>
<td><p>Filters to be applied to search results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_users_:_SearchCriteria">SearchCriteria</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Arn = "string",
          DirectoryUserId = "string",
          HierarchyGroupId = "string",
          Id = "string",
          IdentityInfo = list(
            FirstName = "string",
            LastName = "string"
          ),
          PhoneConfig = list(
            PhoneType = "SOFT_PHONE"|"DESK_PHONE",
            AutoAccept = TRUE|FALSE,
            AfterContactWorkTimeLimit = 123,
            DeskPhoneNumber = "string"
          ),
          RoutingProfileId = "string",
          SecurityProfileIds = list(
            "string"
          ),
          Tags = list(
            "string"
          ),
          Username = "string"
        )
      ),
      NextToken = "string",
      ApproximateTotalCount = 123
    )

### Request syntax

    svc$search_users(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
      SearchFilter = list(
        TagFilter = list(
          OrConditions = list(
            list(
              list(
                TagKey = "string",
                TagValue = "string"
              )
            )
          ),
          AndConditions = list(
            list(
              TagKey = "string",
              TagValue = "string"
            )
          ),
          TagCondition = list(
            TagKey = "string",
            TagValue = "string"
          )
        )
      ),
      SearchCriteria = list(
        OrConditions = list(
          list()
        ),
        AndConditions = list(
          list()
        ),
        StringCondition = list(
          FieldName = "string",
          Value = "string",
          ComparisonType = "STARTS_WITH"|"CONTAINS"|"EXACT"
        ),
        HierarchyGroupCondition = list(
          Value = "string",
          HierarchyGroupMatchType = "EXACT"|"WITH_CHILD_GROUPS"
        )
      )
    )

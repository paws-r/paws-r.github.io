<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_search_security_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Searches security profiles in an Amazon Connect instance, with optional
filtering.

### Usage

    connect_search_security_profiles(InstanceId, NextToken, MaxResults,
      SearchCriteria, SearchFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_search_security_profiles_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_security_profiles_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_security_profiles_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_security_profiles_:_SearchCriteria">SearchCriteria</code></td>
<td><p>The search criteria to be used to return security profiles.</p>
<p>The <code>name</code> field support "contains" queries with a minimum
of 2 characters and maximum of 25 characters. Any queries with character
lengths outside of this range will throw invalid results.</p>
<p>The currently supported value for <code>FieldName</code>:
<code>name</code></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_security_profiles_:_SearchFilter">SearchFilter</code></td>
<td><p>Filters to be applied to search results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityProfiles = list(
        list(
          Id = "string",
          OrganizationResourceId = "string",
          Arn = "string",
          SecurityProfileName = "string",
          Description = "string",
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      ApproximateTotalCount = 123
    )

### Request syntax

    svc$search_security_profiles(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
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
        )
      ),
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
      )
    )

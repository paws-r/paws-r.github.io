<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_user_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists user profiles

### Description

Lists user profiles.

### Usage

    sagemaker_list_user_profiles(NextToken, MaxResults, SortOrder, SortBy,
      DomainIdEquals, UserProfileNameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_user_profiles_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you will receive this
token. Use it in your next request to receive the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_user_profiles_:_MaxResults">MaxResults</code></td>
<td><p>Returns a list up to a specified limit.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_user_profiles_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
Ascending.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_user_profiles_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
CreationTime.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_user_profiles_:_DomainIdEquals">DomainIdEquals</code></td>
<td><p>A parameter by which to filter the results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_user_profiles_:_UserProfileNameContains">UserProfileNameContains</code></td>
<td><p>A parameter by which to filter the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserProfiles = list(
        list(
          DomainId = "string",
          UserProfileName = "string",
          Status = "Deleting"|"Failed"|"InService"|"Pending"|"Updating"|"Update_Failed"|"Delete_Failed",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_user_profiles(
      NextToken = "string",
      MaxResults = 123,
      SortOrder = "Ascending"|"Descending",
      SortBy = "CreationTime"|"LastModifiedTime",
      DomainIdEquals = "string",
      UserProfileNameContains = "string"
    )

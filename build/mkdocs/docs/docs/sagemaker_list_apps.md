<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_apps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists apps

### Description

Lists apps.

### Usage

    sagemaker_list_apps(NextToken, MaxResults, SortOrder, SortBy,
      DomainIdEquals, UserProfileNameEquals, SpaceNameEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_apps_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you will receive this
token. Use it in your next request to receive the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_apps_:_MaxResults">MaxResults</code></td>
<td><p>Returns a list up to a specified limit.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_apps_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
Ascending.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_apps_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
CreationTime.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_apps_:_DomainIdEquals">DomainIdEquals</code></td>
<td><p>A parameter to search for the domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_apps_:_UserProfileNameEquals">UserProfileNameEquals</code></td>
<td><p>A parameter to search by user profile name. If
<code>SpaceNameEquals</code> is set, then this value cannot be
set.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_apps_:_SpaceNameEquals">SpaceNameEquals</code></td>
<td><p>A parameter to search by space name. If
<code>UserProfileNameEquals</code> is set, then this value cannot be
set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Apps = list(
        list(
          DomainId = "string",
          UserProfileName = "string",
          AppType = "JupyterServer"|"KernelGateway"|"TensorBoard"|"RStudioServerPro"|"RSessionGateway",
          AppName = "string",
          Status = "Deleted"|"Deleting"|"Failed"|"InService"|"Pending",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          SpaceName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_apps(
      NextToken = "string",
      MaxResults = 123,
      SortOrder = "Ascending"|"Descending",
      SortBy = "CreationTime",
      DomainIdEquals = "string",
      UserProfileNameEquals = "string",
      SpaceNameEquals = "string"
    )

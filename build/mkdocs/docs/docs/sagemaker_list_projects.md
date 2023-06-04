<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the projects in an Amazon Web Services account

### Description

Gets a list of the projects in an Amazon Web Services account.

### Usage

    sagemaker_list_projects(CreationTimeAfter, CreationTimeBefore,
      MaxResults, NameContains, NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_projects_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns the projects that were created after a
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_projects_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns the projects that were created before a
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_projects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of projects to return in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_projects_:_NameContains">NameContains</code></td>
<td><p>A filter that returns the projects whose name contains a
specified string.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_projects_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>list_projects</code> request
was truncated, the response includes a <code>NextToken</code>. To
retrieve the next set of projects, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_projects_:_SortBy">SortBy</code></td>
<td><p>The field by which to sort results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_projects_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectSummaryList = list(
        list(
          ProjectName = "string",
          ProjectDescription = "string",
          ProjectArn = "string",
          ProjectId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ProjectStatus = "Pending"|"CreateInProgress"|"CreateCompleted"|"CreateFailed"|"DeleteInProgress"|"DeleteFailed"|"DeleteCompleted"|"UpdateInProgress"|"UpdateCompleted"|"UpdateFailed"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_projects(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      NextToken = "string",
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending"
    )

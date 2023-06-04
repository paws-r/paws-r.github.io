<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_list_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the DataBrew projects that are defined

### Description

Lists all of the DataBrew projects that are defined.

### Usage

    gluedatabrew_list_projects(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_list_projects_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_list_projects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in this request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Projects = list(
        list(
          AccountId = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = "string",
          DatasetName = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string",
          Name = "string",
          RecipeName = "string",
          ResourceArn = "string",
          Sample = list(
            Size = 123,
            Type = "FIRST_N"|"LAST_N"|"RANDOM"
          ),
          Tags = list(
            "string"
          ),
          RoleArn = "string",
          OpenedBy = "string",
          OpenDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_projects(
      NextToken = "string",
      MaxResults = 123
    )

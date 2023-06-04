<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_dashboard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a summary for a dashboard

### Description

Provides a summary for a dashboard.

### Usage

    quicksight_describe_dashboard(AwsAccountId, DashboardId, VersionNumber,
      AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_dashboard_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the dashboard that you're describing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_dashboard_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_dashboard_:_VersionNumber">VersionNumber</code></td>
<td><p>The version number for the dashboard. If a version number isn't
passed, the latest published dashboard version is described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_dashboard_:_AliasName">AliasName</code></td>
<td><p>The alias name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Dashboard = list(
        DashboardId = "string",
        Arn = "string",
        Name = "string",
        Version = list(
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Errors = list(
            list(
              Type = "ACCESS_DENIED"|"SOURCE_NOT_FOUND"|"DATA_SET_NOT_FOUND"|"INTERNAL_FAILURE"|"PARAMETER_VALUE_INCOMPATIBLE"|"PARAMETER_TYPE_INVALID"|"PARAMETER_NOT_FOUND"|"COLUMN_TYPE_MISMATCH"|"COLUMN_GEOGRAPHIC_ROLE_MISMATCH"|"COLUMN_REPLACEMENT_MISSING",
              Message = "string",
              ViolatedEntities = list(
                list(
                  Path = "string"
                )
              )
            )
          ),
          VersionNumber = 123,
          Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
          Arn = "string",
          SourceEntityArn = "string",
          DataSetArns = list(
            "string"
          ),
          Description = "string",
          ThemeArn = "string",
          Sheets = list(
            list(
              SheetId = "string",
              Name = "string"
            )
          )
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastPublishedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$describe_dashboard(
      AwsAccountId = "string",
      DashboardId = "string",
      VersionNumber = 123,
      AliasName = "string"
    )

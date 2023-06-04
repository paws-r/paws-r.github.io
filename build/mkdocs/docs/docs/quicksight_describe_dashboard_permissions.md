<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_dashboard_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes read and write permissions for a dashboard

### Description

Describes read and write permissions for a dashboard.

### Usage

    quicksight_describe_dashboard_permissions(AwsAccountId, DashboardId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_dashboard_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the dashboard that you're describing permissions for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_dashboard_permissions_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard, also added to the IAM
policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardId = "string",
      DashboardArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      Status = 123,
      RequestId = "string",
      LinkSharingConfiguration = list(
        Permissions = list(
          list(
            Principal = "string",
            Actions = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_dashboard_permissions(
      AwsAccountId = "string",
      DashboardId = "string"
    )

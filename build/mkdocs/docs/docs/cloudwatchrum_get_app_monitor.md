<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_get_app_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the complete configuration information for one app monitor

### Description

Retrieves the complete configuration information for one app monitor.

### Usage

    cloudwatchrum_get_app_monitor(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchrum_get_app_monitor_:_Name">Name</code></td>
<td><p>[required] The app monitor to retrieve information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppMonitor = list(
        AppMonitorConfiguration = list(
          AllowCookies = TRUE|FALSE,
          EnableXRay = TRUE|FALSE,
          ExcludedPages = list(
            "string"
          ),
          FavoritePages = list(
            "string"
          ),
          GuestRoleArn = "string",
          IdentityPoolId = "string",
          IncludedPages = list(
            "string"
          ),
          SessionSampleRate = 123.0,
          Telemetries = list(
            "errors"|"performance"|"http"
          )
        ),
        Created = "string",
        CustomEvents = list(
          Status = "ENABLED"|"DISABLED"
        ),
        DataStorage = list(
          CwLog = list(
            CwLogEnabled = TRUE|FALSE,
            CwLogGroup = "string"
          )
        ),
        Domain = "string",
        Id = "string",
        LastModified = "string",
        Name = "string",
        State = "CREATED"|"DELETING"|"ACTIVE",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_app_monitor(
      Name = "string"
    )

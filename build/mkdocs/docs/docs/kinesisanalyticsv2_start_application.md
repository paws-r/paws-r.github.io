<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_start_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the specified Kinesis Data Analytics application

### Description

Starts the specified Kinesis Data Analytics application. After creating
an application, you must exclusively call this operation to start your
application.

### Usage

    kinesisanalyticsv2_start_application(ApplicationName, RunConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_start_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_start_application_:_RunConfiguration">RunConfiguration</code></td>
<td><p>Identifies the run configuration (start parameters) of a Kinesis
Data Analytics application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_application(
      ApplicationName = "string",
      RunConfiguration = list(
        FlinkRunConfiguration = list(
          AllowNonRestoredState = TRUE|FALSE
        ),
        SqlRunConfigurations = list(
          list(
            InputId = "string",
            InputStartingPositionConfiguration = list(
              InputStartingPosition = "NOW"|"TRIM_HORIZON"|"LAST_STOPPED_POINT"
            )
          )
        ),
        ApplicationRestoreConfiguration = list(
          ApplicationRestoreType = "SKIP_RESTORE_FROM_SNAPSHOT"|"RESTORE_FROM_LATEST_SNAPSHOT"|"RESTORE_FROM_CUSTOM_SNAPSHOT",
          SnapshotName = "string"
        )
      )
    )

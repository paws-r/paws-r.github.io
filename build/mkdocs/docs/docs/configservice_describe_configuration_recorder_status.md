<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_configuration_recorder_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of the specified configuration recorder as well as the status of the last recording event for the recorder

### Description

Returns the current status of the specified configuration recorder as
well as the status of the last recording event for the recorder. If a
configuration recorder is not specified, this action returns the status
of all configuration recorders associated with the account.

Currently, you can specify only one configuration recorder per region in
your account. For a detailed status of recording events over time, add
your Config events to Amazon CloudWatch metrics and use CloudWatch
metrics.

### Usage

    configservice_describe_configuration_recorder_status(
      ConfigurationRecorderNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_configuration_recorder_status_:_ConfigurationRecorderNames">ConfigurationRecorderNames</code></td>
<td><p>The name(s) of the configuration recorder. If the name is not
specified, the action returns the current status of all the
configuration recorders associated with the account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationRecordersStatus = list(
        list(
          name = "string",
          lastStartTime = as.POSIXct(
            "2015-01-01"
          ),
          lastStopTime = as.POSIXct(
            "2015-01-01"
          ),
          recording = TRUE|FALSE,
          lastStatus = "Pending"|"Success"|"Failure",
          lastErrorCode = "string",
          lastErrorMessage = "string",
          lastStatusChangeTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_configuration_recorder_status(
      ConfigurationRecorderNames = list(
        "string"
      )
    )

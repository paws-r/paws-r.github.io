<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_put_project_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends performance events to Evidently

### Description

Sends performance events to Evidently. These events can be used to
evaluate a launch or an experiment.

### Usage

    cloudwatchevidently_put_project_events(events, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_put_project_events_:_events">events</code></td>
<td><p>[required] An array of event structures that contain the
performance data that is being sent to Evidently.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_put_project_events_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to write the events
to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventResults = list(
        list(
          errorCode = "string",
          errorMessage = "string",
          eventId = "string"
        )
      ),
      failedEventCount = 123
    )

### Request syntax

    svc$put_project_events(
      events = list(
        list(
          data = "string",
          timestamp = as.POSIXct(
            "2015-01-01"
          ),
          type = "aws.evidently.evaluation"|"aws.evidently.custom"
        )
      ),
      project = "string"
    )

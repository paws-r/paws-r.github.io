<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_notify_workers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The NotifyWorkers operation sends an email to one or more Workers that you specify with the Worker ID

### Description

The `notify_workers` operation sends an email to one or more Workers
that you specify with the Worker ID. You can specify up to 100 Worker
IDs to send the same message with a single call to the NotifyWorkers
operation. The NotifyWorkers operation will send a notification email to
a Worker only if you have previously approved or rejected work from the
Worker.

### Usage

    mturk_notify_workers(Subject, MessageText, WorkerIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_notify_workers_:_Subject">Subject</code></td>
<td><p>[required] The subject line of the email message to send. Can
include up to 200 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_notify_workers_:_MessageText">MessageText</code></td>
<td><p>[required] The text of the email message to send. Can include up
to 4,096 characters</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_notify_workers_:_WorkerIds">WorkerIds</code></td>
<td><p>[required] A list of Worker IDs you wish to notify. You can
notify upto 100 Workers at a time.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotifyWorkersFailureStatuses = list(
        list(
          NotifyWorkersFailureCode = "SoftFailure"|"HardFailure",
          NotifyWorkersFailureMessage = "string",
          WorkerId = "string"
        )
      )
    )

### Request syntax

    svc$notify_workers(
      Subject = "string",
      MessageText = "string",
      WorkerIds = list(
        "string"
      )
    )

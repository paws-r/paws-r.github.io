<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_start_service_software_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Schedules a service software update for an Amazon OpenSearch Service domain

### Description

Schedules a service software update for an Amazon OpenSearch Service
domain. For more information, see [Service software updates in Amazon
OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).

### Usage

    opensearchservice_start_service_software_update(DomainName, ScheduleAt,
      DesiredStartTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_start_service_software_update_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to update to the
latest service software.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_start_service_software_update_:_ScheduleAt">ScheduleAt</code></td>
<td><p>When to start the service software update.</p>
<ul>
<li><p><code>NOW</code> - Immediately schedules the update to happen in
the current hour if there's capacity available.</p></li>
<li><p><code>TIMESTAMP</code> - Lets you specify a custom date and time
to apply the update. If you specify this value, you must also provide a
value for <code>DesiredStartTime</code>.</p></li>
<li><p><code>OFF_PEAK_WINDOW</code> - Marks the update to be picked up
during an upcoming off-peak window. There's no guarantee that the update
will happen during the next immediate window. Depending on capacity, it
might happen in subsequent days.</p></li>
</ul>
<p>Default: <code>NOW</code> if you don't specify a value for
<code>DesiredStartTime</code>, and <code>TIMESTAMP</code> if you
do.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_start_service_software_update_:_DesiredStartTime">DesiredStartTime</code></td>
<td><p>The Epoch timestamp when you want the service software update to
start. You only need to specify this parameter if you set
<code>ScheduleAt</code> to <code>TIMESTAMP</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceSoftwareOptions = list(
        CurrentVersion = "string",
        NewVersion = "string",
        UpdateAvailable = TRUE|FALSE,
        Cancellable = TRUE|FALSE,
        UpdateStatus = "PENDING_UPDATE"|"IN_PROGRESS"|"COMPLETED"|"NOT_ELIGIBLE"|"ELIGIBLE",
        Description = "string",
        AutomatedUpdateDate = as.POSIXct(
          "2015-01-01"
        ),
        OptionalDeployment = TRUE|FALSE
      )
    )

### Request syntax

    svc$start_service_software_update(
      DomainName = "string",
      ScheduleAt = "NOW"|"TIMESTAMP"|"OFF_PEAK_WINDOW",
      DesiredStartTime = 123
    )

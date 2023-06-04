<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_event_sources_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the integration status of services that are integrated with DevOps Guru as Consumer via EventBridge

### Description

Returns the integration status of services that are integrated with
DevOps Guru as Consumer via EventBridge. The one service that can be
integrated with DevOps Guru is Amazon CodeGuru Profiler, which can
produce proactive recommendations which can be stored and viewed in
DevOps Guru.

### Usage

    devopsguru_describe_event_sources_config()

### Value

A list with the following syntax:

    list(
      EventSources = list(
        AmazonCodeGuruProfiler = list(
          Status = "ENABLED"|"DISABLED"
        )
      )
    )

### Request syntax

    svc$describe_event_sources_config()

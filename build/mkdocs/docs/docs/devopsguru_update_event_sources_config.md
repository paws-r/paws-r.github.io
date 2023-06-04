<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_update_event_sources_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables integration with a service that can be integrated with DevOps Guru

### Description

Enables or disables integration with a service that can be integrated
with DevOps Guru. The one service that can be integrated with DevOps
Guru is Amazon CodeGuru Profiler, which can produce proactive
recommendations which can be stored and viewed in DevOps Guru.

### Usage

    devopsguru_update_event_sources_config(EventSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_update_event_sources_config_:_EventSources">EventSources</code></td>
<td><p>Configuration information about the integration of DevOps Guru as
the Consumer via EventBridge with another AWS Service.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_event_sources_config(
      EventSources = list(
        AmazonCodeGuruProfiler = list(
          Status = "ENABLED"|"DISABLED"
        )
      )
    )

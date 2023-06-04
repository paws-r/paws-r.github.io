<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_signal_application_instance_node_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Signal camera nodes to stop or resume

### Description

Signal camera nodes to stop or resume.

### Usage

    panorama_signal_application_instance_node_instances(
      ApplicationInstanceId, NodeSignals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_signal_application_instance_node_instances_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] An application instance ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_signal_application_instance_node_instances_:_NodeSignals">NodeSignals</code></td>
<td><p>[required] A list of signals.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInstanceId = "string"
    )

### Request syntax

    svc$signal_application_instance_node_instances(
      ApplicationInstanceId = "string",
      NodeSignals = list(
        list(
          NodeInstanceId = "string",
          Signal = "PAUSE"|"RESUME"
        )
      )
    )

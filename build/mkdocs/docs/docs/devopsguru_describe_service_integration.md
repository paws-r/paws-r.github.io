<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_service_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the integration status of services that are integrated with DevOps Guru

### Description

Returns the integration status of services that are integrated with
DevOps Guru. The one service that can be integrated with DevOps Guru is
Amazon Web Services Systems Manager, which can be used to create an
OpsItem for each generated insight.

### Usage

    devopsguru_describe_service_integration()

### Value

A list with the following syntax:

    list(
      ServiceIntegration = list(
        OpsCenter = list(
          OptInStatus = "ENABLED"|"DISABLED"
        ),
        LogsAnomalyDetection = list(
          OptInStatus = "ENABLED"|"DISABLED"
        )
      )
    )

### Request syntax

    svc$describe_service_integration()

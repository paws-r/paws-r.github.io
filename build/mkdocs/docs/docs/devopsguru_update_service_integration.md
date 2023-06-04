<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_update_service_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables integration with a service that can be integrated with DevOps Guru

### Description

Enables or disables integration with a service that can be integrated
with DevOps Guru. The one service that can be integrated with DevOps
Guru is Amazon Web Services Systems Manager, which can be used to create
an OpsItem for each generated insight.

### Usage

    devopsguru_update_service_integration(ServiceIntegration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_update_service_integration_:_ServiceIntegration">ServiceIntegration</code></td>
<td><p>[required] An <code>IntegratedServiceConfig</code> object used to
specify the integrated service you want to update, and whether you want
to update it to enabled or disabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_service_integration(
      ServiceIntegration = list(
        OpsCenter = list(
          OptInStatus = "ENABLED"|"DISABLED"
        ),
        LogsAnomalyDetection = list(
          OptInStatus = "ENABLED"|"DISABLED"
        )
      )
    )

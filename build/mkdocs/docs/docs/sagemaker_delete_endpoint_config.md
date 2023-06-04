<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_endpoint_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an endpoint configuration

### Description

Deletes an endpoint configuration. The `delete_endpoint_config` API
deletes only the specified configuration. It does not delete endpoints
created using the configuration.

You must not delete an `EndpointConfig` in use by an endpoint that is
live or while the `update_endpoint` or `create_endpoint` operations are
being performed on the endpoint. If you delete the `EndpointConfig` of
an endpoint that is active or being created or updated you may lose
visibility into the instance type the endpoint is using. The endpoint
must be deleted in order to stop incurring charges.

### Usage

    sagemaker_delete_endpoint_config(EndpointConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_endpoint_config_:_EndpointConfigName">EndpointConfigName</code></td>
<td><p>[required] The name of the endpoint configuration that you want
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint_config(
      EndpointConfigName = "string"
    )

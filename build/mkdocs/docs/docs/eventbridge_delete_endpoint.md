<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_delete_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an existing global endpoint

### Description

Delete an existing global endpoint. For more information about global
endpoints, see [Making applications Regional-fault tolerant with global
endpoints and event
replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
in the Amazon EventBridge User Guide.

### Usage

    eventbridge_delete_endpoint(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_delete_endpoint_:_Name">Name</code></td>
<td><p>[required] The name of the endpoint you want to delete. For
example,
<code>"Name":"us-east-2-custom_bus_A-endpoint"</code>..</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint(
      Name = "string"
    )

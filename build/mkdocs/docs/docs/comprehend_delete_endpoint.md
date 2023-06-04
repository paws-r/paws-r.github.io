<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_delete_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a model-specific endpoint for a previously-trained custom model

### Description

Deletes a model-specific endpoint for a previously-trained custom model.
All endpoints must be deleted in order for the model to be deleted. For
information about endpoints, see [Managing
endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

### Usage

    comprehend_delete_endpoint(EndpointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_delete_endpoint_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the endpoint being
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint(
      EndpointArn = "string"
    )
